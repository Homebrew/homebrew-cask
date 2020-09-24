cask "anydo" do
  version "4.2.107"
  sha256 "f2ed544272cc267dee2bd066dd5c4efc74952b79d360c709ea0c51ce53e1c752"

  url "https://electron-app.any.do/Any.do.dmg"
  appcast "https://electron-app.any.do/latest-mac.yml"
  name "Any.do"
  desc "Reminder, planner & calendar"
  homepage "https://www.any.do/"

  depends_on macos: ">= :catalina"

  app "Any.do.app"
end
