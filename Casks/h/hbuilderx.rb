cask "hbuilderx" do
  arch arm: ".arm64"

  version "5.33.2026102401"
  sha256 arm:   "428df050406bba6fd6d9a1bfd76fc27f91a69f8030329f1e4c40660e5d986e13",
         intel: "0d3851f1af973cffe1a12102d1c1239de60f36845c047aafdd26a87cd6efae27"

  url "https://download1.dcloud.net.cn/download/HBuilderX.#{version}#{arch}.dmg"
  name "HBuilderX"
  desc "HTML editor"
  homepage "https://www.dcloud.io/hbuilderx.html"

  livecheck do
    url "https://download1.dcloud.net.cn/hbuilderx/release.json"
    strategy :json do |json|
      json["version"]
    end
  end

  depends_on :macos

  app "HBuilderX.app"

  uninstall quit: "io.dcloud.HBuilderX"

  zap trash: [
    "~/Library/Application Support/HBuilder X",
    "~/Library/Preferences/io.dcloud.HBuilderX.plist",
  ]
end
