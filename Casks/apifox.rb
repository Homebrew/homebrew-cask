cask "apifox" do
  arch arm: "-macOS-arm64"

  version "2.2.39"
  sha256 arm:   "3fb22aa993b36a46a07bd204491b6edcfa40452d5f97db0a3f0ee39f93540fe3",
         intel: "408e577251ff2d428ef541252c9f920c67b469537c6928a0e84893d392b5590a"

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
