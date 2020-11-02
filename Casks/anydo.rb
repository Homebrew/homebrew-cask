cask "anydo" do
  version "4.2.112"
  sha256 "9ab0ccd16e82f47f272ca5e59af536a53450e610e958d08f517889f236ac737c"

  url "https://electron-app.any.do/Any.do.dmg"
  appcast "https://electron-app.any.do/latest-mac.yml"
  name "Any.do"
  desc "Reminder, planner & calendar"
  homepage "https://www.any.do/"

  depends_on macos: ">= :catalina"

  app "Any.do.app"
end
