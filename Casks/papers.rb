cask :v1 => 'papers' do
  version '3.4.0-386'
  sha256 'f0e31f58b2d1085c35e12a5fd3f8e67fde619cc84f7097fe5d86d731736a1f85'

  url "http://appcaster.papersapp.com/apps/mac/production/download/#{version.sub(%r{^.*-},'')}/papers_#{version.delete('.').sub('-','_')}.dmg"
  appcast 'http://appcaster.papersapp.com/apps/mac/production/appcast.xml',
          :sha256 => '681469fc04bc4690c6af360d9cc4d7af1c03626b9c26e1af105b2f4290114caf'
  name 'Papers'
  homepage 'http://www.papersapp.com/'
  license :commercial

  app 'Papers.app'
end
