cask "mailkeys" do
  # `version` and `sha256` are the only two things here that a real build has to
  # supply. Scripts/make-cask.sh fills them in from a notarized disk image and
  # prints the result, so opening the PR at T-7 is a mechanical step rather than
  # a writing one. The placeholders are deliberately invalid: a cask carrying
  # :no_check would install whatever it was handed.
  version "1.0.0"
  sha256 "267c5c29c5a01edb1018649f9844afaf314f048923b946bbf624a54d3b6f2797"

  # Versioned, not /download/latest. Homebrew pins the checksum above to this
  # URL, so an URL whose contents change breaks every machine still on the
  # previous cask revision, with an error that reads like a compromised
  # download. worker/index.ts serves this path from an R2 key that is written
  # once and never rewritten.
  #
  # A .dmg needs nothing said about it here: Homebrew mounts a disk image,
  # copies out what `app` names, and unmounts, exactly as it unzipped an archive
  # before. The stanza below is unchanged from when this was a zip.
  url "https://mailkeys.app/download/MailKeys-#{version}.dmg"
  name "MailKeys"
  desc "Gmail's keyboard shortcuts for Apple Mail"
  homepage "https://mailkeys.app/"

  # Homebrew watches the Sparkle feed, which is the same feed installed copies
  # watch, so the cask cannot drift from what the app itself would update to.
  #
  # This replaced a `:page_match` against /changelog that was wrong twice over
  # and was caught by `brew audit` rather than by anything here: `strategy` was
  # being passed two arguments where the DSL takes one, which made the cask
  # unreadable, and the regex looked for a zip filename on a page that has never
  # contained one, so it could not have matched even had it parsed.
  # The bare `:sparkle` strategy returns "1.0.0,147", pairing the marketing
  # version with CFBundleVersion, and `brew audit` fails a cask whose own
  # version does not match what livecheck retrieves. Taking `short_version`
  # alone is the honest fix rather than writing the pair into `version`: the
  # download URL is built from x.y.z and the R2 key is written once per release,
  # so a build number has nowhere to appear in it. Sparkle still compares builds
  # on the app's side, which is where that number means something.
  livecheck do
    url "https://mailkeys.app/appcast.xml"
    strategy :sparkle, &:short_version
  end

  # One group, in the order Homebrew requires, so the comments sit above it
  # rather than between the stanzas.
  #
  # `auto_updates` because MailKeys updates itself through Sparkle, and Homebrew
  # has to be told or the two fight: `brew upgrade` would reinstall the version
  # pinned above over an app that has already moved past it, and
  # `brew list --versions` would report a number that stopped being true at the
  # first self-update. With it set, Homebrew installs and uninstalls and leaves
  # upgrading to the app, which is the honest division of labour: the feed the
  # cask watches for livecheck is the one doing the updating.
  #
  # The two `depends_on` lines are real requirements rather than caution.
  # MailKeys is built for the host architecture only, and it resolves Apple
  # Mail's commands against menu trees that macOS 26 introduced. Stating them
  # is what turns "it does not work" on an Intel Mac into "this cask is not for
  # your machine".
  auto_updates true
  depends_on macos: :tahoe
  depends_on arch: :arm64

  app "MailKeys.app"

  uninstall quit: "app.mailkeys.MailKeys"

  zap trash: [
    "~/Library/Application Support/MailKeys",
    "~/Library/Caches/app.mailkeys.MailKeys",
    "~/Library/Preferences/app.mailkeys.MailKeys.plist",
  ]

  caveats <<~EOS
    MailKeys needs Accessibility and Input Monitoring, and macOS will ask for
    both the first time it runs. It reads Apple Mail's menu titles to find
    commands and never the contents of a message, and it makes no network
    calls. What those permissions allow and how to check the claims for
    yourself: https://mailkeys.app/privacy

    Apple Mail has to be running in English. Commands are found by their
    English menu titles, so another language resolves nothing.
  EOS
end
