cask "apifox" do
  arch arm: "-macOS-arm64"

  version "2.1.34"
  sha256 arm:   "c8a5741801c15dbf078a5d99f29e3884aa9c03d249f54bed6dd5136a11d33532",
         intel: "4b6ebce6da81ab38c84413dea010ef7e4b9432e82b9bba7d89c1ba351f069d0a"

  url "https://cdn.apifox.cn/download/#{version}/Apifox#{arch}-#{version}.dmg"
  name "Apifox"
  desc "Postman + Swagger + Mock + Jmeter = Apifox"
  homepage "https://www.apifox.cn/"

  livecheck do
    url "https://cdn.apifox.cn/download/mac/latest-mac.yml"
    strategy :page_match
    regex(/version: (\d+(?:\.\d+)(?:\.\d+))/i)
  end

  auto_updates true

  app "Apifox.app"

  zap trash: [
    "~/Library/Application Support/apifox",
    "~/Library/Preferences/cn.apifox.app.plist",
    "~/Library/Saved Application State/cn.apifox.app.savedState",
  ]
end
