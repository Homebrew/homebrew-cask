cask :v1 => 'bitlord' do
  version '2.3.2'
  sha256 'd9af26b1626fd471550fbc3374158b09ae7c129bd3ab17ffbdf559d813e42af1'

  url "http://www.bitlord.com/osx/BitLord-Lion-#{version}.dmg"
  homepage 'http://www.bitlord.com'
  license :gpl

  app 'BitLord.app'
end
