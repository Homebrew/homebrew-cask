cask "hbuilderx" do
  arch arm: ".arm64"

  version "5.07.2026041006"
  sha256 arm:   "1ebb89b6e154e469d3dd444385faf5b9416cb3e2c50287b06b3a070693f05eab",
         intel: "5aa2cb8c080ac380face825fb338eac8ceeaf240493c67cdaff7dc74ce03a005"

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

  depends_on macos: ">= :big_sur"

  app "HBuilderX.app"

  zap trash: "~/Library/Application Support/HBuilder X"
end
