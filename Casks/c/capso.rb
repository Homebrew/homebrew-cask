cask "capso" do
  version "1.2.9"
  sha256 "467ee070ed851c1332d07259ab89a53bf3ec85235c62f438bf3a68aa58985870"

  url "https://github.com/lzhgus/Capso/releases/download/v#{version}/Capso-#{version}.dmg"
  name "Capso"
  desc "Screenshot and screen recording tool"
  homepage "https://github.com/lzhgus/Capso"

  livecheck do
    url "https://lzhgus.github.io/Capso/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sequoia

  app "Capso.app"

  uninstall quit: "com.awesomemacapps.capso"

  zap login_item: "Capso",
      trash:      [
        "~/Library/Application Support/Capso",
        "~/Library/Application Support/com.awesomemacapps.capso",
        "~/Library/Application Support/CrashReporter/Capso_*.plist",
        "~/Library/Caches/com.awesomemacapps.capso",
        "~/Library/HTTPStorages/com.awesomemacapps.capso",
        "~/Library/Preferences/com.awesomemacapps.capso.plist",
      ]
end
