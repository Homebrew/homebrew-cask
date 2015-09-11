cask :v1 => 'papers' do
  version '3.3.1-347'
  sha256 'df1ee90be340dff275f2fba340ce6687a9f612525c8282e06ecd1e8d842a03b8'

  url "http://appcaster.papersapp.com/apps/mac/production/download/#{version.sub(%r{^.*-},'')}/papers_#{version.delete('.').sub('-','_')}.dmg"
  appcast 'http://appcaster.papersapp.com/apps/mac/production/appcast.xml',
          :sha256 => '4383f5d86a31d7d1068e687f65492c8438985f09717b896a5db87cdeb1f75f0b'
  name 'Papers'
  homepage 'http://www.papersapp.com/papers/'
  license :commercial

  app 'Papers.app'
end
