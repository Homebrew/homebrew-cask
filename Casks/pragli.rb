cask "pragli" do
  version "20.10.4"
  sha256 :no_check

  url "https://storage.googleapis.com/always-on-cdf01.appspot.com/dist/Pragli.dmg",
      verified: "storage.googleapis.com/always-on-cdf01.appspot.com/"
  appcast "https://storage.googleapis.com/always-on-cdf01.appspot.com/dist/latest-mac.yml"
  name "Pragli"
  desc "Virtual office for remote teams"
  homepage "https://pragli.com/"

  app "Pragli.app"

  zap trash: [
    "~/Library/Application Support/Pragli",
    "~/Library/Logs/Pragli",
    "~/Library/Preferences/pragli.com.plist",
    "~/Library/Saved Application State/pragli.com.savedState",
  ]
end
