cask "anydo" do
  version "4.2.136"
  sha256 "2fba09baca6ea086ed652a5fd49471f77f306b11ff68d418ef3b42f20d11ce94"

  url "https://electron-app.any.do/Any.do-#{version}.dmg"
  name "Any.do"
  desc "Reminder, planner & calendar"
  homepage "https://www.any.do/"

  livecheck do
    url "https://electron-app.any.do/latest-mac.yml"
    strategy :page_match
    regex(/version: (\d+(?:\.\d+)*)/i)
  end

  depends_on macos: ">= :catalina"

  app "Any.do.app"
end
