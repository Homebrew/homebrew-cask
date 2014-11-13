cask :v1 => 'omnidazzle' do
  version '1.2'
  sha256 '47dfafb0740eeb164832804bd9ccf898f722057f919cd59197e04f9263f3a175'

  url "http://downloads2.omnigroup.com/software/MacOSX/10.6/OmniDazzle-#{version}.dmg"
  homepage 'http://www.omnigroup.com/more'
  license :unknown

  app 'OmniDazzle.app'
end
