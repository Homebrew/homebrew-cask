cask 'coronasdk' do
  version '2017.3135'
  sha256 '86654603f890edf2f27d54acdb97fac55e352b263c6950886860f27a3114ff22'

  url "https://developer.coronalabs.com/sites/default/files/Corona-#{version}.dmg"
  name 'Corona SDK'
  homepage 'https://coronalabs.com/'

  suite 'Corona'
end
