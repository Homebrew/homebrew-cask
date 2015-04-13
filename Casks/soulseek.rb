cask :v1 => 'soulseek' do
  version '2014-12-19'
  sha256 'e0a3a3aee96fa1d5f98033b8d749f6d87419d7d68edef2035e03042d176bc943'

  url "http://www.soulseekqt.net/SoulseekQt/Mac/SoulseekQt-#{version}.dmg"
  name 'Soulseek'
  homepage 'http://www.soulseekqt.net/'
  license :gratis

  app 'SoulseekQt.app'
end
