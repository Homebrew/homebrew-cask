cask "hbuilderx" do
  version "4.23.2024070804"
  sha256 "982464717373491ce6dc0b668fa272badfd5f32bd71fd63221a6f12c4e057c7e"

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
