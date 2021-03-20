cask "sengi" do
  version "1.1.1"
  sha256 "7b109ddb5a9739b72760b37b7685fa30b8e6cf986f64e7f91394374ac9cb6fcf"

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
