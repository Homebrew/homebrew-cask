cask "anydo" do
  version "4.2.139"
  sha256 "a7bb23edbc0b0bc90fa00fd75d5404628ed36e4460f57fe0bc2a886cbba4f236"

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
