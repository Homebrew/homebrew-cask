cask "krisp" do
  version "1.18.10"
  sha256 "7c138c1bdc5a197f2e5f7ae1a9cc6ed7c0625afa15f254f8bba8038c1971393f"

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
