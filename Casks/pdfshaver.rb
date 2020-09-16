cask "pdfshaver" do
  version "1.0"
  sha256 "ebfacb5e30b0939c4549f36fe88be10c0d4bae1ffaa4616e70daf849d19df9d0"

  url "https://github.com/tparry/PDFShaver.app/releases/download/v#{version}/PDFShaver.zip"
  appcast "https://github.com/tparry/PDFShaver.app/releases.atom"
  name "PDFShaver"
  desc "Shrink PDF files to make them smaller"
  homepage "https://github.com/tparry/PDFShaver.app"

  app "PDFShaver.app"
end
