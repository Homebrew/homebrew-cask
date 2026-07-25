cask "hbuilderx" do
  arch arm: ".arm64"

  version "5.15.2026070915"
  sha256 arm:   "3cd9c2c4f39932e2d0a33fac557cdbf3d5fba3f63581ae2fc6ac1919bebc389b",
         intel: "ac1f0b73d2d378c22b4f9be4b35364797edbac64356ac91e428d143c3e2bbe1e"

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
