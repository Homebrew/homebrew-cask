cask 'adguard' do
  version '1.1.0'
  sha256 '4d48a7c048e36d002b371e22765e68fef31dd011db18635bef35063e456c27f8'

  url "https://static.adguard.com/mac/Adguard-#{version}.release.dmg"
  appcast 'https://static.adguard.com/mac/adguard-release-appcast.xml',
          :sha256 => '139d8f94b95d3044a86e96de6cfce4915e70a6e88fb72c45bd76c61f25fa493d'
  name 'Adguard for Mac'
  homepage 'https://adguard.com/'
  license :commercial

  app 'Adguard.app'
end
