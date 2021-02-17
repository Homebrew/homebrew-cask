cask "anydo" do
  version "4.2.140"
  sha256 "1bb1834c3a00f977062e63795a00f9a3631dafcf15786f82cee6787e8c9ffe53"

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
