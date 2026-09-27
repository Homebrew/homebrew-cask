cask "slashy" do
  version "1.3.60"
  sha256 "c1efd06f185d52b395c780115ddf7170a4d49e52b7697594a3e302368cd4515c"

  url "https://dl.slashy.com/Slashy-#{version}-universal.dmg"
  name "Slashy"
  desc "Email client for Gmail"
  homepage "https://www.slashy.com/"

  livecheck do
    url "https://dl.slashy.com/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :monterey

  app "Slashy.app"

  zap trash: [
    "~/Library/Application Support/slashyemail",
    "~/Library/Preferences/com.slashy.email.plist",
  ]
end
