cask "dust3d" do
  version "1.1.5"
  sha256 "dd80c4edbc210b1cef6817fb3bb292477217a62772bb018d09e9770a17d7e14e"

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
