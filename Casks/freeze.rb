cask :v1 => 'freeze' do
  version :latest
  sha256 :no_check

  url 'https://freezeapp.net/download/Freeze.zip'
  appcast 'https://freezeapp.net/appcast.xml',
          :sha256 => '3bbf3d3266aec4efe9995b4a89cd358c8819c181c5958983828e68781310ab8a'
  name 'Freeze'
  homepage 'https://freezeapp.net/'
  license :freemium

  app 'Freeze.app'
end
