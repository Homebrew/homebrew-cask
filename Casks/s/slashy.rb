cask "slashy" do
  version "1.3.49"
  sha256 "68201e15ff6087173557217c50d65ec7c4809db04e5f8d4bd6e1ca447f86af13"

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
