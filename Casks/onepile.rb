cask 'onepile' do
  version '2.0-1092'
  sha256 '8deb9355b80cc8ddc14797db98bdb917bae07fb2c92d785e797e19f6a8a30b32'

  url "https://onepile.app/update/macos/OnePile-#{version}.zip"
  appcast 'https://onepile.app/sparklecast.xml'
  name 'OnePile'
  homepage 'https://onepile.app/'

  app 'OnePile.app'
end
