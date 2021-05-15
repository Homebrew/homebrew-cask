cask "krisp" do
  version "1.20.13"
  sha256 "e464ca4aa14d8f1cdee4496b32807af3d5825cff5ad39d0cb059ad7a84d7e273"

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
