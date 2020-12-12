cask "krisp" do
  version "1.16.6"
  sha256 "1f6cc4fbf0ba1a2ec6af4fd0370b667619454d5f45b0c817ebd36b7ac1a053ae"

  url "https://cdn.krisp.ai/mac/release/v#{version.major}.#{version.minor}/krisp_#{version}.pkg"
  appcast "https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://api.krisp.ai/v2/download/mac"
  name "Krisp"
  homepage "https://krisp.ai/"

  auto_updates true
  depends_on macos: ">= :sierra"

  pkg "krisp_#{version}.pkg"

  uninstall quit:    [
    "ai.2Hz.krisp",
    "ai.krisp.krispMac",
  ],
            pkgutil: "ai.2Hz.Krisp"
end
