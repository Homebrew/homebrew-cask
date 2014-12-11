cask :v1 => 'gamesalad' do
  version '0.14.4.1-beta'
  sha256 '05f68db92cee37fedffe23a2950fa55c375fd53acd7d19ae8fd42884345814e7'

  url 'http://gs.releases.s3.amazonaws.com/creator/0.10.4.1/GameSalad-Creator-0.10.4.1-beta.dmg'
  appcast 'http://gamesalad.com/download/studioUpdates',
          :sha256 => '8e036d02694dfc8e84a00aec29ae6306ab0e469a66e29514d3599e874200b355'
  homepage 'http://gamesalad.com'
  license :unknown    # todo: improve this machine-generated value

  app 'GameSalad.app'
end
