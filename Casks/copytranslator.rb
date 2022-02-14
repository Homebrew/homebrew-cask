cask "copytranslator" do
  version "9.0.2"
  sha256 "5da337e06e1ac6325627f99a0662042b1d97689613685cc046441d41d6d1f075"

  url "https://github.com/CopyTranslator/CopyTranslator/releases/download/v#{version}/copytranslator-#{version}.dmg",
      verified: "github.com/CopyTranslator/CopyTranslator/"
  name "CopyTranslator"
  desc "Tool that translates text in real-time while copying"
  homepage "https://copytranslator.github.io/"

  # We need to check all releases since not all releases are for macOS.
  livecheck do
    url "https://github.com/CopyTranslator/CopyTranslator/releases"
    strategy :page_match
    regex(%r{href=.*?/copytranslator[._-]v?(\d+(?:\.\d+)+)\.dmg}i)
  end

  depends_on macos: ">= :sierra"

  app "copytranslator.app"

  zap trash: [
    "~/Library/Application Support/copytranslator",
    "~/Library/Preferences/com.copytranslator.copytranslator.plist",
    "~/Library/Saved Application State/com.copytranslator.copytranslator.savedState",
    "~/copytranslator/copytranslator.json",
    "~/copytranslator/localShortcuts.json",
    "~/copytranslator/shortcuts.json",
    "~/copytranslator/styles.css",
  ],
      rmdir: "~/copytranslator/locales"
end
