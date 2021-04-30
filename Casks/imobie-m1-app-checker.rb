cask "imobie-m1-app-checker" do
  version "1.1.0"
  sha256 :no_check

  url "https://dl.imobie.com/imobie-m1-app-checker.zip"
  name "iMobie M1 App Checker"
  desc "Check if the apps are M1 compatible"
  homepage "https://www.imobie.com/m1-app-checker/"

  app "iMobie M1 App Checker.app"

  zap trash: [
    "~/Library/Application Support/com.iMobie.iMobie-M1-App-Checker",
    "~/Library/Caches/com.iMobie.iMobie-M1-App-Checker",
    "~/Library/Preferences/com.iMobie.iMobie-M1-App-Checker.plist",
  ]
end
