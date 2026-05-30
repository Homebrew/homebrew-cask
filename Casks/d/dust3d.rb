cask "dust3d" do
  version "1.1.2"
  sha256 "2fde4dbc989d4ad3fe6dfc04d189e22bc692dc0c51d16892522891cde33e6333"

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
