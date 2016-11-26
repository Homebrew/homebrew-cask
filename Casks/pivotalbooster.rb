cask 'pivotalbooster' do
  version '1.1.4.beta'
  sha256 'c32ca0eecd595340f255485ec6cff0c975d3549c2db58b3ddc7b736922a5e159'

  # pivotalbooster.com was verified as official when first introduced to the cask
  url "http://pivotalbooster.com/downloads/releases/#{version}/PivotalBooster_#{version}.dmg"
  name 'PivotalBooster'
  homepage 'http://booster.railsware.com/'

  app 'PivotalBooster.app'
end
