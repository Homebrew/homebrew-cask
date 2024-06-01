cask "font-ocr" do
  version "0.2"
  sha256 "39289c641520265ecedbade99f01600f316f8196ec57f71c8402d3ba09438666"

  url "https://ftp.iij.ad.jp/pub/osdn.jp/tsukurimashou/56948/ocr-#{version}.zip",
      verified: "osdn.dl.osdn.jp/tsukurimashou/"
  name "OCR"
  homepage "https://ansuz.sooke.bc.ca/page/fonts#ocra"

  font "ocr-#{version}/OCRA.otf"
  font "ocr-#{version}/OCRB.otf"
  font "ocr-#{version}/OCRBE.otf"
  font "ocr-#{version}/OCRBF.otf"
  font "ocr-#{version}/OCRBL.otf"
  font "ocr-#{version}/OCRBS.otf"
  font "ocr-#{version}/OCRBX.otf"

  # No zap stanza required
end
