cask "hbuilderx" do
  version "4.36.2024112817"
  sha256 "fe0f6440d2130ced5c8e9a9fcd5743af078ad56a79ed2ff24b64de637012ea8a"

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
