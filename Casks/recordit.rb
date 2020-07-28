cask "recordit" do
  version "1.6.10"
  sha256 "ff5dab671541e8ed0493bcc0c20da357d4df21a65371bfc156837b36888b2fb7"

  url "https://recordit.co/latest"
  appcast "https://rink.hockeyapp.net/api/2/apps/5fcda0b48f1dcf0c938b289b9ab57790"
  name "RecordIt"
  homepage "https://recordit.co/"

  app "RecordIt.app"

  zap trash: [
    "~/Library/Application Support/Recordit",
    "~/Library/Caches/us.freshout.RecordIt",
    "~/Library/Preferences/us.freshout.RecordIt.plist",
  ]
end
