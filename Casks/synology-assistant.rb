cask :v1 => 'synology-assistant' do
  version '5.2-5005'
  sha256 '8f39a872edd0fb68339edadef23996c4e3b6743bcffbc785ea312bbaca31d417'

  url "https://global.download.synology.com/download/Tools/SynologyAssistant/#{version.sub(%r{.*-},'')}/Mac/Synology-Assistant-#{version}.dmg"
  name 'Synology Assistant'
  homepage 'https://www.synology.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Synology Assistant.app'
end
