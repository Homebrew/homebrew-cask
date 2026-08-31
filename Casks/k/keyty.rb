cask "keyty" do
  version "1.5.0"
  sha256 "aa81d54ed954b1ae0f955cf99bab058fdd3cd32100851d82ffed48e39c0995be"

  url "https://github.com/keytyapp/Keyty/releases/download/v#{version}/Keyty.dmg"
  name "Keyty"
  desc "Keyboard and mouse input visualizer"
  homepage "https://keyty.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :big_sur

  app "Keyty.app"

  zap trash: [
    "~/Library/Preferences/app.keyty.Keyty.plist",
    "~/Library/Saved Application State/app.keyty.Keyty.savedState",
  ]
end
