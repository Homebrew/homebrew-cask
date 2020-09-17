cask "pdfsam-basic" do
  version "4.1.4"
  sha256 "e75c82b5b1ace85aa9f81ee49e2e5ac4631f88ea79c46dfeb4718ec8018e7596"

  # github.com/torakiki/pdfsam/ was verified as official when first introduced to the cask
  url "https://github.com/torakiki/pdfsam/releases/download/v#{version}/PDFsam-#{version}.dmg"
  appcast "https://github.com/torakiki/pdfsam/releases.atom"
  name "PDFsam Basic"
  desc "Extractas pages, splits, merges, mixes and rotates PDF files"
  homepage "https://pdfsam.org/"

  app "PDFsam Basic.app"
end
