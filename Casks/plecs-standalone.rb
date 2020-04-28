cask 'plecs-standalone' do
  version '4.3.6'
  sha256 'a517cebe68283865b34107351958ae817da3e25baa0aebb704d587258ab32842'

  url "https://www.plexim.com/sites/default/files/packages/plecs-standalone-#{version.dots_to_hyphens}_maci64.dmg"
  name 'PLECS'
  homepage 'https://www.plexim.com/'

  app 'PLECS 4.3.app'
end
