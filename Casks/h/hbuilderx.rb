cask "hbuilderx" do
  version "4.56.2025031210"
  sha256 "8a2caa5d73383992220480495a5b094721270873dfacac2e5350cbb751cf35e8"

  url "https://download1.dcloud.net.cn/download/HBuilderX.#{version}.dmg",
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

  app "HBuilderX.app"

  zap trash: "~/Library/Application Support/HBuilder X"

  caveats do
    requires_rosetta
  end
end
