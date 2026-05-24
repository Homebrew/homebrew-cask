cask "dust3d" do
  version "1.1.0"
  sha256 "7743b6f27243554d57d94761ae37b29dc4aa692fff803321c9ada7ad1e46f517"

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
