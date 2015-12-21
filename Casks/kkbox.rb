cask 'kkbox' do
  version '5.2.80-80ddc30'
  sha256 '6c8094410d428ce9dfcf41039b8d8008cf8571cd622dbcaa3e4b9ddb103f92ac'

  url "http://download.kkbox.com/files/KKBOX-#{version}.dmg"
  name 'KKBOX'
  homepage 'https://www.kkbox.com/'
  license :commercial

  app 'KKBOX.app'
end
