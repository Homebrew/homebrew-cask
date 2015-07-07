cask :v1 => 'synology-assistant' do
  version '5.2-5566'
  sha256 '8960586857f7fd1fb2cb683f9031b05344440b4c9f8dd5d8a735831d3b541e42'

  url "https://global.download.synology.com/download/Tools/SynologyAssistant/#{version.sub(%r{.*-},'')}/Mac/Synology-Assistant-#{version}.dmg"
  name 'Synology Assistant'
  homepage 'https://www.synology.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Synology Assistant.app'
end
