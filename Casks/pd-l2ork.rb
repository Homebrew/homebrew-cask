cask "pd-l2ork" do
  version "2.14.0"
  sha256 "349ecd772705011ee483a1b29e3bd2a000b1adabd5911dd41572b31279b15c42"

  # github.com/agraef/purr-data/ was verified as official when first introduced to the cask
  url "https://github.com/agraef/purr-data/releases/download/#{version}/osx_10.11-x86_64-dmg.zip"
  appcast "https://github.com/agraef/purr-data/releases.atom"
  name "Pd-l2ork"
  name "Purr Data"
  desc "Purr Data - Jonathan Wilkes' cross-platform Pd-l2ork version"
  homepage "https://agraef.github.io/purr-data/"

  app "Pd-l2ork.app"
  binary "#{appdir}/Pd-l2ork.app/Contents/Resources/app.nw/pd-l2ork"

  uninstall_preflight do
    set_permissions "#{appdir}/Pd-l2ork.app", "0777"
  end
end
