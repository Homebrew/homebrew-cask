cask "clip-studio-paint" do
  version "1.10.0"
  sha256 "990f83036fba4733cae5203cdb70c992d625805a531b3950afe842ff34a1e42d"

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
