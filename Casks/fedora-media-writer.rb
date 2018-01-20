cask 'fedora-media-writer' do
  version '4.1.1'
  sha256 'aefc333e274145b620f29b281068159999e90dba3eb9cd854a3acfb15381e306'

  # github.com/MartinBriza/MediaWriter was verified as official when first introduced to the cask
  url "https://github.com/MartinBriza/MediaWriter/releases/download/#{version}/FedoraMediaWriter-osx-#{version}.dmg"
  appcast 'https://github.com/MartinBriza/MediaWriter/releases.atom',
          checkpoint: '184ae18aab6984ddbb002d71c05e6e32286e402e43e43fa9c19c4fac6f61af85'
  name 'Fedora Media Writer'
  homepage 'https://fedoraproject.org/wiki/How_to_create_and_use_Live_USB'

  app 'Fedora Media Writer.app'
end
