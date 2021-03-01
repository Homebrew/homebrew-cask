cask "clip-studio-paint" do
  version "1.10.6"
  sha256 "956b22c1c00f79361e372e3a7078ff26d591bdf4306af523b622d96ba16b36b1"

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
