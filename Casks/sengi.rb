cask "sengi" do
  version "1.1.5"
  sha256 "753f92fd621ac142f2608d837598c0187918d66c45176430ed5a95d05acbc3d9"

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
