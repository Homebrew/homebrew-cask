cask "anydo" do
  version "4.2.122"
  sha256 "acbb7858eb79ab103d97fe0549b3fee48b3931845b77881adb01907c232b1010"

  url "https://electron-app.any.do/Any.do.dmg"
  appcast "https://electron-app.any.do/latest-mac.yml"
  name "Any.do"
  desc "Reminder, planner & calendar"
  homepage "https://www.any.do/"

  depends_on macos: ">= :catalina"

  app "Any.do.app"
end
