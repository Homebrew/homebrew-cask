cask "anydo" do
  version "4.2.109"
  sha256 "7fb07b67750b8b1fb00920d1625de5adbbe53585d876b29bddbfa9d49df60ed7"

  url "https://electron-app.any.do/Any.do.dmg"
  appcast "https://electron-app.any.do/latest-mac.yml"
  name "Any.do"
  desc "Reminder, planner & calendar"
  homepage "https://www.any.do/"

  depends_on macos: ">= :catalina"

  app "Any.do.app"
end
