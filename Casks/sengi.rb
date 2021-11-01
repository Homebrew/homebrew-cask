cask "sengi" do
  version "1.1.4"
  sha256 "51cb1042b05472b4c589e6b1d62fd525f5f35b7bc873d9bdab1e60fbd325ff75"

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
