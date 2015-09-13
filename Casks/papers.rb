cask :v1 => 'papers' do
  version '3.3.2-354'
  sha256 '5f9ad1fd6ea9199935b82b8e8fc2878cd2551fd6048f67a8f60d66f1fb8ebf3d'

  url "http://appcaster.papersapp.com/apps/mac/production/download/#{version.sub(%r{^.*-},'')}/papers_#{version.delete('.').sub('-','_')}.dmg"
  appcast 'http://appcaster.papersapp.com/apps/mac/production/appcast.xml',
          :sha256 => '6267962deccb3c0c997658b7a0e7a329f8d882d0aec6957136d27a53f2f91f6b'
  name 'Papers'
  homepage 'http://www.papersapp.com/papers/'
  license :commercial

  app 'Papers.app'
end
