cask 'itk-snap' do
  version '3.6.0-20170401'
  sha256 '865e54fc3c872bf1815dd0535dd232a195844eac7016186e3327587555dceda6'

  # downloads.sourceforge.net/itk-snap was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/itk-snap/itksnap-#{version}-MacOS-x86_64.dmg"
  appcast "https://sourceforge.net/projects/itk-snap/rss?path=/itk-snap/#{version.major_minor_patch}"
  name 'ITK-SNAP'
  homepage 'http://www.itksnap.org/pmwiki/pmwiki.php'

  app 'ITK-SNAP.app'
end
