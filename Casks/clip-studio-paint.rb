cask "clip-studio-paint" do
  version "1.12.7"
  sha256 "f5b5bb609f43ab7ebfa8b8e2150acc35dfc1b90dbfb96ad1d28643ff6b02f6a2"

  url "https://vd.clipstudio.net/clipcontent/paint/app/#{version.no_dots}/CSP_#{version.no_dots}m_app.pkg"
  name "Clip Studio Paint"
  desc "Software for drawing and painting"
  homepage "https://www.clipstudio.net/en"

  livecheck do
    url "https://www.clipstudio.net/en/dl/release_note/"
    regex(/Clip\s+Studio\s+Paint\s+(?:v|Ver\.?|Version)?\s*(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: ">= :high_sierra"

  installer manual: "CSP_#{version.no_dots}m_app.pkg"

  uninstall pkgutil: [
    "jp.co.CELSYS.AggregateMdul.*",
    "jp.co.CELSYS.CertMdul.*",
    "jp.co.CELSYS.ClipStudio*",
  ]
end
