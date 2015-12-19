cask 'patchblocks' do
  version '0.3.3'
  sha256 'd039d82a61a53b75962ebf9fb7b31426b69435271988b61f5ba23ec58001fa83'

  url "http://patchblocks.com/sites/default/files/Patchblocks-#{version}-Yosemite.dmg"
  name 'Patchblocks'
  homepage 'http://patchblocks.com/'
  license :gratis

  app "Patchblocks-#{version}.app"
end
