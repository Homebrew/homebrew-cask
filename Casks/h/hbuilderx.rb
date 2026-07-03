cask "hbuilderx" do
  arch arm: ".arm64"

  version "5.14.2026070214"
  sha256 arm:   "6593d211ec995c9bf4d4a8ec4b04796ea97d805f3504373a8f5810c66a33720f",
         intel: "3a441af8e0ddc62847d7ea56cb48ab37d6d57d1b0b94d94bf9c4a28c77fc57c1"

  url "https://download1.dcloud.net.cn/download/HBuilderX.#{version}#{arch}.dmg",
      verified: "download1.dcloud.net.cn/download/"
  name "HBuilderX"
  desc "HTML editor"
  homepage "https://www.dcloud.io/hbuilderx.html"

  livecheck do
    url "https://download1.dcloud.net.cn/hbuilderx/release.json"
    strategy :json do |json|
      json["version"]
    end
  end

  depends_on macos: :big_sur

  app "HBuilderX.app"

  zap trash: "~/Library/Application Support/HBuilder X"
end
