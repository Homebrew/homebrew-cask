cask "pop" do
  version "5.0.4"
  sha256 "6e78f5d3b475ec6721de8e2024194a97a40abc5a65a264f60a2395d9b1bb88a2"

  url "https://download.pop.com/desktop-app/darwin/#{version}/Pop.dmg"
  name "Pop"
  desc "Remote pair programming"
  homepage "https://pop.com/"

  livecheck do
    url "https://download.pop.com/"
    strategy :page_match
    regex(%r{desktop-app/darwin/(\d+(\.\d+)*)/Pop\.dmg})
  end

  auto_updates true

  app "Pop.app"

  zap trash: [
    "~/Library/Application Support/Pop",
    "~/Library/Preferences/com.pop.pop.app.plist",
  ]
end
