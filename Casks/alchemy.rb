cask :v1 => 'alchemy' do
  version '008.1'
  sha256 '7527f4e2231db8167c57d2639fcba166d8fefea091cca7884bd355fb52a3449a'

  url "http://al.chemy.org/files/Alchemy-#{version.sub(%r{\..*},'')}.dmg"
  name 'Alchemy'
  homepage 'http://al.chemy.org'
  license :gpl

  app 'Alchemy.app'
end
