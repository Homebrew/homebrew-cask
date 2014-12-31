cask :v1 => 'spek' do
  version '0.8.3'
  sha256 '648ffe37a4605d76b8d63ca677503ba63338b84c5df73961d9a5335ff144cc54'

  url "https://spek.googlecode.com/files/spek-#{version}.dmg"
  homepage 'http://spek.cc'
  license :oss

  app 'Spek.app'
end
