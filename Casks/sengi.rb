cask "sengi" do
  version "1.1.2.1"
  sha256 "f1444e134ef2f43dc488de9543ab96a5b173919f3c2b40a02c2a52d786b4a8fb"

  url "https://github.com/NicolasConstant/sengi/releases/download/#{version}/Sengi-#{version.major_minor_patch}-mac.dmg"
  name "Sengi"
  desc "Mastodon and Pleroma desktop client"
  homepage "https://github.com/NicolasConstant/sengi"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Sengi.app"

  zap trash: [
    "~/Library/Application Support/sengi",
    "~/Library/Preferences/org.sengi.desktop.plist",
    "~/Library/Saved Application State/org.sengi.desktop.savedState",
  ]
end
