cask "slashy" do
  version "1.3.58"
  sha256 "96b5b9671d6551997b658fe9a14cc7bd5ca957c862c4e75741e19183f7a4e726"

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
