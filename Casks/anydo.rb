cask "anydo" do
  version "4.2.120"
  sha256 "ad5b95d4da469ca4d2b40c424fe2f5795729301ab5066b09995602216f38fbc0"

  url "https://electron-app.any.do/Any.do.dmg"
  appcast "https://electron-app.any.do/latest-mac.yml"
  name "Any.do"
  desc "Reminder, planner & calendar"
  homepage "https://www.any.do/"

  depends_on macos: ">= :catalina"

  app "Any.do.app"
end
