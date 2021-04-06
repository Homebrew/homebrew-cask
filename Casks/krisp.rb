cask "krisp" do
  version "1.19.12"
  sha256 "80fda6a8fd9268b6277baf6722ca5d645d402aa2d1d5285e7a965657f81c9e14"

  url "https://cdn.krisp.ai/mac/release/v#{version.major}.#{version.minor}/krisp_#{version}.pkg"
  name "Krisp"
  homepage "https://krisp.ai/"

  livecheck do
    url "https://api.krisp.ai/v2/download/mac"
    strategy :header_match
  end

  auto_updates true
  depends_on macos: ">= :sierra"

  pkg "krisp_#{version}.pkg"

  uninstall quit:    "ai.krisp.krispMac",
            pkgutil: "ai.krisp.krispMac"
end
