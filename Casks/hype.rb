cask 'hype' do
  version '3.6.6'
  sha256 'aaee53e8232769b986eb6545babff96b433a27bcbcaa301077dae24bc3a6e7b3'

  url 'https://tumult.com/hype/download/Hype.zip'
  appcast 'https://tumult.com/hype/appcast_hype2.xml',
          checkpoint: '107554dd13a44b6e9cb34d58a868669c616e787e41e1cd218f22046cb35dac16'
  name 'Tumult Hype'
  homepage 'https://tumult.com/hype/'

  # Renamed for consistency: app name is different in the Finder and in a shell
  app 'Hype2.app', target: "Hype #{version.major}.app"
end
