cask :v1 => 'synology-assistant' do
  version '5.0-4448'
  sha256 'b4e23a43c2b11bd41596809fa84dfad1d17832140145ddf1b79cb8301f2f2014'

  url "https://global.download.synology.com/download/Tools/SynologyAssistant/4448/Mac/Synology-Assistant-#{version}.dmg"
  homepage 'http://www.synology.com/'
  license :unknown    # todo: improve this machine-generated value

  app 'Synology Assistant.app'
end
