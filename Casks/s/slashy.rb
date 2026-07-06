cask "slashy" do
  version "1.3.47"
  sha256 "f2051f5460974f4ba1e5c0044a0a8fded655288a6ec1d6155aff39d96ba8f98c"

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
