cask 'inform' do
  version '6M62'
  sha256 'e6ee117ffe33481d495f03493f1c88a733a2907918a59630a319d47bae73265a'

  url "http://inform7.com/apps/#{version}/I7-#{version}-OSX-Interim.dmg"
  appcast 'http://inform7.com/downloads/'
  name 'Inform'
  homepage 'http://inform7.com/'

  app 'Inform.app'
end
