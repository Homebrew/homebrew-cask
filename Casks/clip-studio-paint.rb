cask "clip-studio-paint" do
  version "1.12.0"
  sha256 "27e421ee90ef75bbfee7c069a0a5b608be9524fb7be27a10ffc8425200c92e86"

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
