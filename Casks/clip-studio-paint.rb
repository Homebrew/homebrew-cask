cask "clip-studio-paint" do
  version "1.10.1"
  sha256 "ab381e7bcb4a4b7ffd5095e00df4e0e86a20ffb901dab0eb75481b2f61749ebd"

  url "https://vd.clipstudio.net/clipcontent/paint/app/#{version.no_dots}/CSP_#{version.no_dots}m_app.pkg"
  appcast "https://www.clipstudio.net/en/dl",
          must_contain: version.no_dots
  name "CLIP STUDIO PAINT"
  homepage "https://www.clipstudio.net/en"

  installer manual: "CSP_#{version.no_dots}m_app.pkg"

  uninstall pkgutil: [
    "jp.co.CELSYS.AggregateMdul.*",
    "jp.co.CELSYS.CertMdul.*",
    "jp.co.CELSYS.ClipStudio*",
  ]
end
