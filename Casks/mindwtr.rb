cask "mindwtr" do
  arch arm: "aarch64", intel: "x64"

  version "0.6.14"
  sha256 arm:   "bd1561e8daccb5df46ce860610f43a3b22b1c5917f348404450ee46442b079e8",
         intel: "48b8ce7ce6085c418a42d30c4bdaff51362c86187f543965cf62644666c1ff10"

  url "https://github.com/dongdongbh/Mindwtr/releases/download/v#{version}/mindwtr_#{version}_#{arch}.dmg"
  name "Mindwtr"
  desc "Local-first GTD productivity tool"
  homepage "https://github.com/dongdongbh/Mindwtr"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Mindwtr.app"

  zap trash: [
    "~/Library/Application Support/mindwtr",
    "~/Library/Application Support/tech.dongdongbh.mindwtr",
    "~/Library/Preferences/tech.dongdongbh.mindwtr.plist",
    "~/Library/Saved Application State/tech.dongdongbh.mindwtr.savedState",
  ]
end
