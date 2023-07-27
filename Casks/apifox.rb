cask "apifox" do
  arch arm: "-macOS-arm64"

  version "2.3.7"
  sha256 arm:   "3ae7b241e9aeb03efc47c76140adce0965373296722e2f53b93bea05b47c83b7",
         intel: "ac31ccf602310c7884e1e0730892af072ad7194941cd6d7977f1966d1ef519d5"

  url "https://cdn.apifox.cn/download/#{version}/Apifox#{arch}-#{version}.dmg"
  name "Apifox"
  desc "Platform for API documentation, debugging, and testing"
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
