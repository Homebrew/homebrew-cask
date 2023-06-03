cask "apifox" do
  arch arm: "-macOS-arm64"

  version "2.2.42"
  sha256 arm:   "28056553209ce62bf57d1ba16e2b9f574ab3f5ef70adf003ea2790d110c05250",
         intel: "ce45b62c8c79eb08613f92c4365448275eb8bc71ada318e19cb486f47b7c1457"

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
