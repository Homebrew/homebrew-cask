cask :v1 => 'raptor' do
  version '98u3f5'
  sha256 'e19dc03ab5e0f7bb17179ce4bcf364211cee3928d7182d3db1dd0c4cf7ee87e0'

  url "https://raptor-chess-interface.googlecode.com/files/Raptor_v#{version}_OS_X_Cocoa_x86_64.dmg"
  name 'Raptor Chess Interface'
  homepage 'https://code.google.com/p/raptor-chess-interface/'
  license :bsd

  app "Raptor_v#{version}/Raptor.app"
end
