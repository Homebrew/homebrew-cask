cask "clip-studio-paint" do
  version "3.2.0"
  sha256 "b3709beea56f476112cd7bf9fc823bcbdc1d8b3170b219d2f7303b2311a69355"

  url "https://vd.clipstudio.net/clipcontent/paint/app/#{version.no_dots}/CSP_#{version.no_dots}m_app.pkg"
  name "Clip Studio Paint"
  desc "Software for drawing and painting"
  homepage "https://www.clipstudio.net/en"

  livecheck do
    url "https://www.clipstudio.net/en/dl/release_note/latest/"
    regex(/Version\s+v?(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: ">= :monterey"

  installer manual: "CSP_#{version.no_dots}m_app.pkg"

  uninstall pkgutil: [
    "jp.co.CELSYS.AggregateMdul.*",
    "jp.co.CELSYS.CertMdul.*",
    "jp.co.CELSYS.ClipStudio*",
  ]

  zap delete: "/Library/Application Support/CELSYS",
      trash:  [
        "~/Library/Application Scripts/jp.co.celsys.CLIPSTUDIOPAINT.LipPreview",
        "~/Library/Application Scripts/jp.co.celsys.CLIPSTUDIOPAINT.LipThumbnail",
        "~/Library/Application Support/CELSYS",
        "~/Library/Caches/jp.co.celsys.CLIPSTUDIO",
        "~/Library/CELSYS",
        "~/Library/Containers/jp.co.celsys.CLIPSTUDIOPAINT.LipPreview",
        "~/Library/Containers/jp.co.celsys.CLIPSTUDIOPAINT.LipThumbnail",
        "~/Library/HTTPStorages/jp.co.celsys.CLIPSTUDIO",
        "~/Library/HTTPStorages/jp.co.celsys.CLIPSTUDIO.binarycookies",
        "~/Library/Saved Application State/jp.co.celsys.CLIPSTUDIO.savedState",
      ]
end
