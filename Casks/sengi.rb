cask "sengi" do
  version "1.1.3"
  sha256 "f46f87fc91d093e579b05c613b443737e5df31c8356f4367af4cfdc9ec3077e1"

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
