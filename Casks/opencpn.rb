cask "opencpn" do
  version "5.2.4,1.6b314e6"
  sha256 "05152e347480519bc010bb334b27601520671ae32953d8e915131ed54da738ca"

  url "https://download-opencpn.netdna-ssl.com/#{version.before_comma}/OpenCPN_#{version.before_comma}+#{version.after_comma}.pkg",
      verified: "download-opencpn.netdna-ssl.com/"
  name "OpenCPN"
  desc "Full-featured and concise ChartPlotter/Navigator"
  homepage "https://www.opencpn.org/"

  livecheck do
    url "https://github.com/OpenCPN/OpenCPN/releases/latest"
    strategy :page_match do |page|
      match = page.match(%r{href=.*?/OpenCPN_(\d+(?:\.\d+)*)\+(.*?)\.pkg}i)
      "#{match[1]},#{match[2]}"
    end
  end

  pkg "OpenCPN_#{version.before_comma} #{version.after_comma}.pkg"

  uninstall pkgutil: [
    "org.opencpn.pkg.OpenCPN",
    "org.opencpn",
  ]
end
