cask "krisp" do
  version "1.18.9"
  sha256 "0282baa6cfa5194a582c8d23a019df6b9e057339743ee05b48584e18484eead6"

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
