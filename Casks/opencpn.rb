cask "opencpn" do
  version "5.6.2"
  sha256 "dd093babd8b565cced08c0fd6467c70e6af4da707caf5ddc47e64b601944467a"

  url "https://github.com/OpenCPN/OpenCPN/releases/download/Release_#{version}/OpenCPN_#{version}.pkg",
      verified: "github.com/OpenCPN/OpenCPN/"
  name "OpenCPN"
  desc "Full-featured and concise ChartPlotter/Navigator"
  homepage "https://www.opencpn.org/"

  livecheck do
    url :url
    regex(/v?(\d+(?:\.\d+)+)$/i)
  end

  pkg "OpenCPN_#{version}.pkg"

  uninstall pkgutil: [
    "org.opencpn.pkg.OpenCPN",
    "org.opencpn",
  ]
end
