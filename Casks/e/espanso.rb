cask "espanso" do
  arch arm: "M1", intel: "Intel"

  version "2.2.1"
  sha256 arm:   "419687d4d954630c8690e315eb7830b28f03b95521d720fc2bd960e084d49993",
         intel: "369ad7eb9a30015a3836012970acd15b3b06c6f67349a89ced6bb3ae9c3f2d20"

  url "https://github.com/espanso/espanso/releases/download/v#{version}/Espanso-Mac-#{arch}.zip",
      verified: "github.com/espanso/espanso/"
  name "Espanso"
  desc "Cross-platform Text Expander written in Rust"
  homepage "https://espanso.org/"

  # Upstream may not mark unstable releases like `1.2.3-beta` as pre-release
  # on GitHub, so they can end up as the "latest" release. They also tag
  # versions that may not end up with a release and some releases use a stable
  # version format but are marked as pre-release, so we can't rely on Git tags.
  # This checks the first-party website's Installation page, which links to
  # release files on GitHub.
  livecheck do
    url "https://espanso.org/install/"
    regex(%r{href=.*?/v?(\d+(?:\.\d+)+)/Espanso-Mac-#{arch}\.zip}i)
  end

  app "Espanso.app"
  binary "#{appdir}/Espanso.app/Contents/MacOS/espanso"

  zap trash: [
    "~/Library/Application Support/espanso",
    "~/Library/Caches/espanso",
    "~/Library/LaunchAgents/com.federicoterzi.espanso.plist",
    "~/Library/Preferences/com.federicoterzi.espanso.plist",
    "~/Library/Preferences/espanso",
    "~/Library/Preferences/espanso.plist",
    "~/Library/Saved Application State/com.federicoterzi.espanso.savedState",
  ]
end
