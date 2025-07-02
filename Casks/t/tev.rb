cask "tev" do
  arch intel: "-intel"

  version "2.2"
  sha256 arm:   "2068cb3d5516e325d459bfa1a6816d7a9245f736be7f23eaf01bacdb8d707b6d",
         intel: "5ad9a44afd6e8d1dd89db347f44e6425aa86fbab036aa0a2bfb51535c7d11228"

  url "https://github.com/Tom94/tev/releases/download/v#{version}/tev#{arch}.dmg"
  name "tev"
  desc "HDR image comparison tool with an emphasis on OpenEXR images"
  homepage "https://github.com/Tom94/tev"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  no_autobump! because: :requires_manual_review

  depends_on macos: ">= :catalina"

  app "tev.app"

  zap trash: "~/Library/Preferences/org.tom94.tev.plist"
end
