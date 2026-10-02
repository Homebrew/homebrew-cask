cask "slashy" do
  version "1.3.64"
  sha256 "149b974a050388d98639fea17392056d844a9b6e4da6eadf8e79660cb4f11841"

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
