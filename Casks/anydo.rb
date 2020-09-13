cask "anydo" do
  version "4.2.105"
  sha256 "4fba8c340791a5e9ff3d541038e0596c61cf2d45a250bd3c464151942ae31c25"

  url "https://electron-app.any.do/Any.do.dmg"
  appcast "https://electron-app.any.do/latest-mac.yml"
  name "Any.do"
  desc "Reminder, planner & calendar"
  homepage "https://www.any.do/"

  depends_on macos: ">= :catalina"

  app "Any.do.app"
end
