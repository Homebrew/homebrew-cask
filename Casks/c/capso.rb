cask "capso" do
  version "1.2.8"
  sha256 "719ee84a8c0d9868171df9fc31675c3fdb9a556b183405c741f2d93fc83d5e58"

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
