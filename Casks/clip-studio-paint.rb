cask "clip-studio-paint" do
  version "1.11.14"
  sha256 "c86ece5f6d6a01ee1fcc204d0f767a6181d27514c916e7f0cacec70f024ca70f"

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
