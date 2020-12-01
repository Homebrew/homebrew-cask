cask "anydo" do
  version "4.2.118"
  sha256 "b6d84ef0d633943374324dc1cd145337164d8e5da6b166a526b364440044d9a8"

  url "https://electron-app.any.do/Any.do.dmg"
  appcast "https://electron-app.any.do/latest-mac.yml"
  name "Any.do"
  desc "Reminder, planner & calendar"
  homepage "https://www.any.do/"

  depends_on macos: ">= :catalina"

  app "Any.do.app"
end
