cask "dust3d" do
  version "1.1.3"
  sha256 "aaa7df3aa7cb57ce7faed039bddce93b008370830cacba84bc3b9603063633b8"

  url "https://github.com/huxingyi/dust3d/releases/download/#{version}/dust3d-#{version}.dmg",
      verified: "github.com/huxingyi/dust3d/"
  name "Dust3D"
  desc "Open-source 3D modelling software"
  homepage "https://dust3d.org/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on :macos

  app "dust3d.app"

  zap trash: "~/Library/Saved Application State/com.yourcompany.dust3d.savedState"
end
