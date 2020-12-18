cask "clip-studio-paint" do
  version "1.10.5"
  sha256 "7e924577140ee59cffe43efc388caabf72b681c83fd3c0651862e15a40f04a66"

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
