cask 'adguard' do
  version '1.1.0'
  sha256 '4d48a7c048e36d002b371e22765e68fef31dd011db18635bef35063e456c27f8'

  url 'https://static.adguard.com/mac/Adguard.release.dmg'
  name 'Adguard for Mac'
  homepage 'https://adguard.com/'
  license :closed

  app 'Adguard.app'
end
