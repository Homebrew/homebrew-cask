cask "krisp" do
  version "1.17.13"
  sha256 "df42f5b420bab00f883d398669bba5317a69f2886588ed19444028083e915aba"

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
