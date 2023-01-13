cask "apifox" do
  arch arm: "-macOS-arm64"

  version "2.2.14"
  sha256 arm:   "dd66efbda8b2646928f0e82dae47587d11759511e638d932760e61a5180d3485",
         intel: "efebac3394bf9c37bfaf1c6f0bbdd949ba27ec1ddfe3df1abd95f033db6779ba"

  url "https://cdn.apifox.cn/download/#{version}/Apifox#{arch}-#{version}.dmg"
  name "Apifox"
  desc "Platform for API documentation, debugging, Mock and testing"
  homepage "https://www.apifox.cn/"

  livecheck do
    url "https://cdn.apifox.cn/download/mac/latest-mac.yml?noCache=#{Time.new.to_i * 2}"
    strategy :electron_builder
  end

  auto_updates true

  app "Apifox.app"

  zap trash: [
    "~/Library/Application Support/apifox",
    "~/Library/Preferences/cn.apifox.app.plist",
    "~/Library/Saved Application State/cn.apifox.app.savedState",
  ]
end
