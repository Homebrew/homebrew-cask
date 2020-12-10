cask "anydo" do
  version "4.2.123"
  sha256 "96e1a31f80919316e76d60672be68eb51305de68f3d9ebbd320b3f3f2717d404"

  url "https://electron-app.any.do/Any.do-#{version}.dmg"
  appcast "https://electron-app.any.do/latest-mac.yml"
  name "Any.do"
  desc "Reminder, planner & calendar"
  homepage "https://www.any.do/"

  depends_on macos: ">= :catalina"

  app "Any.do.app"
end
