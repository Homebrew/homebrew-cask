cask "epubmdimporter" do
  version "1.8"
  sha256 "740c288a6ad2c98d5c94cf6eccba3ef535faaeda5ad408a897f84d4b324d16e0"

  url "https://github.com/jaketmp/ePub-quicklook/releases/download/v#{version}/epub.mdimporter.zip"
  name "EPUB Spotlight"
  homepage "https://github.com/jaketmp/ePub-quicklook"

  mdimporter "epub.mdimporter", target: "AA_epub.mdimporter"
end
