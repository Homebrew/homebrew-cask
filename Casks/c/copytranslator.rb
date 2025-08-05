cask "copytranslator" do
  version "11.0.0"
  sha256 "b05cd929b0e285d0b5300f71a575b20287f3c814043138ce04e1bcfc4d1dff96"

  url "https://github.com/CopyTranslator/CopyTranslator/releases/download/v#{version}/copytranslator-#{version}.dmg",
      verified: "github.com/CopyTranslator/CopyTranslator/"
  name "CopyTranslator"
  desc "Tool that translates text in real-time while copying"
  homepage "https://copytranslator.github.io/"

  livecheck do
    url "https://github.com/CopyTranslator/copytranslator.github.io/blob/master/docs/.vuepress/public/wiki/mac.md"
    regex(%r{href=.*?/copytranslator[._-]v?(\d+(?:\.\d+)+)\.dmg}i)
    strategy :page_match
  end

  depends_on macos: ">= :sierra"

  app "copytranslator.app"

  zap trash: [
        "~/copytranslator/copytranslator.json",
        "~/copytranslator/localShortcuts.json",
        "~/copytranslator/shortcuts.json",
        "~/copytranslator/styles.css",
        "~/Library/Application Support/copytranslator",
        "~/Library/Preferences/com.copytranslator.copytranslator.plist",
        "~/Library/Saved Application State/com.copytranslator.copytranslator.savedState",
      ],
      rmdir: "~/copytranslator/locales"

  caveats do
    requires_rosetta
  end
end
