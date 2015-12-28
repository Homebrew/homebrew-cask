cask 'papers' do
  version '3.4.1-407'
  sha256 '9a1d3f9d2e6cfc55881ac69882c3b362c89aaa471449fd001a59dceb8730189b'

  url "http://appcaster.papersapp.com/apps/mac/production/download/#{version.sub(%r{^.*-},'')}/papers_#{version.delete('.').sub('-','_')}.dmg"
  appcast 'http://appcaster.papersapp.com/apps/mac/production/appcast.xml',
          :sha256 => '681469fc04bc4690c6af360d9cc4d7af1c03626b9c26e1af105b2f4290114caf'
  name 'Papers'
  homepage 'http://www.papersapp.com/'
  license :commercial

  app 'Papers.app'
end
