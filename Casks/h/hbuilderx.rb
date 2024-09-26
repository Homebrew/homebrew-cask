cask "hbuilderx" do
  version "4.28.2024092502"
  sha256 "78fd6b1499b81e61d9edf82a9309eefb17fe080cd761df5b6933bee73a2a7f16"

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
