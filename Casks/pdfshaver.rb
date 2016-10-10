cask 'pdfshaver' do
  version '1.0'
  sha256 'ebfacb5e30b0939c4549f36fe88be10c0d4bae1ffaa4616e70daf849d19df9d0'

  url "https://github.com/tparry/PDFShaver.app/releases/download/v#{version}/PDFShaver.zip"
  appcast 'https://github.com/tparry/PDFShaver.app/releases.atom',
          checkpoint: 'a9136fb21812e99c8d7093e9b627faf192d1eda228e52ae51af7e28cf6ef034f'
  name 'PDFShaver'
  homepage 'https://github.com/tparry/PDFShaver.app'

  app 'PDFShaver.app'
end
