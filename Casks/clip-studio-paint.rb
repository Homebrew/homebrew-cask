cask "clip-studio-paint" do
  version "1.10.3"
  sha256 "7f9419aba695912cfffa7b01ad974d3f2fb229db065c0b4fc16cb878693547ad"

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
