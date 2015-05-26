cask :v1 => 'musescore' do
  version '2.0.0'
  sha256 'b5db0b39b6d204e997d5fb4dfcb8dabe40a0a37d08964dfc6c0df52b8a578238'

  # osuosl.org is the official download host per the vendor homepage.
  url "http://ftp.osuosl.org/pub/musescore/releases/MuseScore-#{version.sub(%r{\.\d+},'')}/MuseScore-#{version}.dmg"
  name 'MuseScore'
  homepage 'http://musescore.org/'
  license :gpl

  app 'MuseScore 2.app'
end
