cask "font-ocr" do
  version "0.3.1"
  sha256 "58136fccfdee0923cc83a20996a067b98bae054570ee41bf896d7ca8224399bf"

  url "https://tsukurimashou.org/files/ocr-#{version}.zip"
  name "OCR"
  homepage "https://tsukurimashou.org/ocr.php.en"

  livecheck do
    skip "No version information available"
  end

  font "ocr-#{version}/OCRA.otf"
  font "ocr-#{version}/OCRB.otf"
  font "ocr-#{version}/OCRBE.otf"
  font "ocr-#{version}/OCRBF.otf"
  font "ocr-#{version}/OCRBL.otf"
  font "ocr-#{version}/OCRBS.otf"
  font "ocr-#{version}/OCRBX.otf"

  # No zap stanza required
end
