cask "apifox" do
  arch arm: "-macOS-arm64"

  version "2.1.38"
  sha256 arm:   "0635614006525dd4181db759425bd5f1fd636be2d27553a14b7a954aa6fa3363",
         intel: "8561a3c0c2687f6888670930a1dca7c8542c6c1d0ff20ed9c09dda6e517f3509"

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
