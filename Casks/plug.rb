cask 'plug' do
  if MacOS.version <= :mavericks
    version '0.10.5'
    sha256 'd8eed07bd1f84d6f1daa7a0699617f2e21c01df2e68924945bcb4889d1251d01'
    url "https://plugformac.com/files/Plug-#{version}.dmg"
  else
    version '2.0.11'
    sha256 '9542bbae3beadca999246012cc5ede97ae6e992fdd622c482f1c1bf0145a7f8d'
    appcast "https://www.plugformac.com/updates/plug#{version.major}/sparklecast.xml",
            checkpoint: '9bf2e94dd7486633b9dd622d7dbc631f346ec6304744ec157da2a476886e9b03'
    url 'https://www.plugformac.com/updates/plug2/Plug-latest.dmg'
  end

  name 'Plug'
  homepage 'https://www.plugformac.com/'
  license :gratis

  app 'Plug.app'
end
