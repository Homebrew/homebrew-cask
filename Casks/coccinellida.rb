cask :v1 => 'coccinellida' do
  version '0.7'
  sha256 '9eb8376fa3764e406433aff969fb5aa9f8ba78886948d013ea690cf979baaf88'

  url "http://downloads.sourceforge.net/project/coccinellida/Coccinellida-#{version}.zip"
  appcast 'https://raw.githubusercontent.com/troydm/coccinellida/master/sparkle.xml',
          :sha256 => 'd336e5c62e70c015481efc58d550cead48e8dac5b92fee4469fe0b79d08a0baa'
  name 'Coccinellida'
  homepage 'http://coccinellida.sourceforge.net/'
  license :gpl

  app 'Coccinellida.app'
end
