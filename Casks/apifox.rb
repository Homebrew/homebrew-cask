cask "apifox" do
  arch arm: "-arm64"

  version "2.1.34"
  sha256 :no_check

  url "https://cdn.apifox.cn/download/Apifox-macOS#{arch}-latest.zip"
  name "Apifox"
  desc "Postman + Swagger + Mock + Jmeter = Apifox"
  homepage "https://www.apifox.cn/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  auto_updates true

  app "Apifox.app"

  zap trash: [
    "~/Library/Application Support/apifox",
    "~/Library/Preferences/cn.apifox.app.plist",
    "~/Library/Saved Application State/cn.apifox.app.savedState",
  ]
end
