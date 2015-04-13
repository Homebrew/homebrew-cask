cask :v1 => 'audacity' do
  version '2.1.0'
  sha256 '0485ab70a86ab6d500b9365b24d279f10971b9260f0b537142b48832f8f84389'

  url "http://downloads.sourceforge.net/project/audacity/audacity/#{version}/audacity-macosx-ub-#{version}.dmg"
  name 'Audacity'
  homepage 'http://audacity.sourceforge.net/'
  license :gpl

  app 'Audacity/Audacity.app'
end
