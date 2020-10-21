cask "opencpn" do
  version "5.2.4,1.6b314e6"
  sha256 "05152e347480519bc010bb334b27601520671ae32953d8e915131ed54da738ca"

  url "http://download.opencpn.org/#{version.before_comma}/OpenCPN_#{version.before_comma}+#{version.after_comma}.pkg"
  appcast "https://github.com/OpenCPN/OpenCPN/releases.atom"
  name "OpenCPN"
  desc "Full-featured and concise ChartPlotter/Navigator"
  homepage "https://www.opencpn.org/"

  pkg "OpenCPN_#{version.before_comma} #{version.after_comma}.pkg"

  uninstall pkgutil: [
    "org.opencpn.pkg.OpenCPN",
    "org.opencpn",
  ]
end
