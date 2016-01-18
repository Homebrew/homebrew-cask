cask 'adguard' do
  version '1.1.0'
  sha256 '4d48a7c048e36d002b371e22765e68fef31dd011db18635bef35063e456c27f8'

  url "https://static.adguard.com/mac/Adguard-#{version}.release.dmg"
  appcast 'https://static.adguard.com/mac/adguard-release-appcast.xml',
          checkpoint: '6d78234d82be433e81311e85d5b78fd915323bb32fb59c0b17891561367c3c5b'
  name 'Adguard for Mac'
  homepage 'https://adguard.com/'
  license :commercial

  app 'Adguard.app'
end
