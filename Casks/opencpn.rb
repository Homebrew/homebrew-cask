cask "opencpn" do
  version "5.6.0"
  sha256 "29d0a9fb9f140dcf900404015888873293e0a34cd80032fe0cf1acc47140c579"

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
