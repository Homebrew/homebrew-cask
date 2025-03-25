cask "hbuilderx" do
  version "4.57.2025032507"
  sha256 "47485bd6aa9f86254df13f65823133c0c853ce039c4e957d59c95c2ec60217be"

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
