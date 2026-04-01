cask "hbuilderx" do
  arch arm: ".arm64"

  version "5.06.2026033105"
  sha256 arm:   "bbfe2301e6e9479abb70ce4e0264f064b3dbd3aac3df8c20c436e9d0b41a4292",
         intel: "57997888ea8b1e30ec528a3b14cc7d03c1b748d8989ca44a6439869e5e8e4d55"

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
