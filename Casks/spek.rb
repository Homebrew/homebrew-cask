cask :v1 => 'spek' do
  version '0.8.3'
  sha256 '648ffe37a4605d76b8d63ca677503ba63338b84c5df73961d9a5335ff144cc54'

  # googlecode.com is the official download host per the vendor homepage
  url "https://spek.googlecode.com/files/spek-#{version}.dmg"
  name 'Spek'
  homepage 'http://spek.cc'
  license :gpl

  app 'Spek.app'
end
