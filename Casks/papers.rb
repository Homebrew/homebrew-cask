cask :v1 => 'papers' do
  version '3.3.3-361'
  sha256 '0f5279a77f7fd1560b77f9ae81ecebf531906900318b45b3b2746b1c6d87fb5b'

  url "http://appcaster.papersapp.com/apps/mac/production/download/#{version.sub(%r{^.*-},'')}/papers_#{version.delete('.').sub('-','_')}.dmg"
  appcast 'http://appcaster.papersapp.com/apps/mac/production/appcast.xml',
          :sha256 => '0b58ec3ddcf8f5080a8d6e149e92a1c273e668bd4e04f7f865d4aaa6a347370a'
  name 'Papers'
  homepage 'http://www.papersapp.com/papers/'
  license :commercial

  app 'Papers.app'
end
