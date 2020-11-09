cask "anydo" do
  version "4.2.113"
  sha256 "74b028520e7ae25e5157e81d85aceb82905313e45e6018cecc597d6171312174"

  url "https://electron-app.any.do/Any.do.dmg"
  appcast "https://electron-app.any.do/latest-mac.yml"
  name "Any.do"
  desc "Reminder, planner & calendar"
  homepage "https://www.any.do/"

  depends_on macos: ">= :catalina"

  app "Any.do.app"
end
