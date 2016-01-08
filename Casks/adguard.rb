cask 'adguard' do
  version '1.1.0'
  sha256 '4d48a7c048e36d002b371e22765e68fef31dd011db18635bef35063e456c27f8'

  url "http://static.adguard.com/mac/Adguard-#{version}.release.dmg"
  appcast 'http://static.adguard.com/mac/adguard-release-appcast.xml',
          :sha256 => 'da71722e3f38d233508d4581d67f1b499fe1f9f4e4117a18bfff8ec2002ca3ee'
  name 'Adguard for Mac'
  homepage 'https://adguard.com/'
  license :commercial

  app 'Adguard.app'
end
