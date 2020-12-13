cask "anydo" do
  version "4.2.124"
  sha256 "88ce50a7d01cc75e991eba47b0c7a7a68828cfcdc47cfc0b05f072d48d3eb8af"

  url "https://electron-app.any.do/Any.do-#{version}.dmg"
  appcast "https://electron-app.any.do/latest-mac.yml"
  name "Any.do"
  desc "Reminder, planner & calendar"
  homepage "https://www.any.do/"

  depends_on macos: ">= :catalina"

  app "Any.do.app"
end
