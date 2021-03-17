cask "anydo" do
  version "4.2.143"
  sha256 "8030afec552028aac76cf69fbb8e3ff6e7ced6cbaaebf4c13636fed7b230b271"

  url "https://electron-app.any.do/Any.do-#{version}.dmg"
  name "Any.do"
  desc "Reminder, planner & calendar"
  homepage "https://www.any.do/"

  livecheck do
    url "https://electron-app.any.do/latest-mac.yml"
    strategy :page_match do |page|
      YAML.safe_load(page)["version"]
    end
  end

  depends_on macos: ">= :catalina"

  app "Any.do.app"
end
