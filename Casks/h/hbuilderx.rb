cask "hbuilderx" do
  arch arm: ".arm64"

  version "5.23.2026080626"
  sha256 arm:   "329511d98e5ffb32de304c72868aae3c77691f77bd4b1f2616018cb71e374c8a",
         intel: "4a022ab0c98602e3253e3103285f2d319bb75a54a8dd1fe4e7bc1c40a8b82196"

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
