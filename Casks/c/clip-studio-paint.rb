cask "clip-studio-paint" do
  version "5.1.5"
  sha256 "b168ff82ea59c88ac1392e8c592189a1d8b15ca67a43ebc16acf4e4eb1c0c62f"

  url "https://vd.clipstudio.net/clipcontent/paint/app/#{version.no_dots}/CSP_#{version.no_dots}m_app.pkg"
  name "Clip Studio Paint"
  desc "Software for drawing and painting"
  homepage "https://www.clipstudio.net/en"

  livecheck do
    url "https://www.clipstudio.net/en/dl/release_note/latest/"
    regex(/Version\s+v?(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: :monterey

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
