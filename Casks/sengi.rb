cask "sengi" do
  version "1.0.3"
  sha256 "e09c5de93c6080e687a160d91cabf61375743a05f5899d8e8c204c53a0fe9338"

  url "https://github.com/NicolasConstant/sengi/releases/download/#{version}/Sengi-#{version}-mac.dmg"
  name "Sengi"
  desc "Mastodon and Pleroma desktop client"
  homepage "https://github.com/NicolasConstant/sengi"

  livecheck do
    url :url
    strategy :github_latest
    regex(%r{href=.*?/Sengi-(\d+(?:\.\d+)*)-mac\.dmg}i)
  end

  app "Sengi.app"

  zap trash: [
    "~/Library/Application Support/sengi",
    "~/Library/Preferences/org.sengi.desktop.plist",
    "~/Library/Saved Application State/org.sengi.desktop.savedState",
  ]
end
