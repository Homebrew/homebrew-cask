cask "itk-snap" do
  version "3.8.0,20190612"
  sha256 "135405baf7abc900d17d9120798b104654a9bc271aa9476c9c1150d165ee5fd8"

  # downloads.sourceforge.net/itk-snap/ was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/itk-snap/itksnap-#{version.before_comma}-#{version.after_comma}-MacOS-x86_64.dmg"
  appcast "https://sourceforge.net/projects/itk-snap/rss?path=/itk-snap/#{version.before_comma}"
  name "ITK-SNAP"
  homepage "http://www.itksnap.org/pmwiki/pmwiki.php"

  app "ITK-SNAP.app"
end
