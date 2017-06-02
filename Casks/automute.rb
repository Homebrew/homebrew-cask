cask 'automute' do
  version '1.1'
  sha256 '9c9991790d947cb75c3e21088392c5cfe0d4da0bbc631b5d10abe1fc20353130'

  url "https://github.com/Lorenzo45/AutoMute/releases/download/v#{version}/AutoMute.zip"
  appcast 'https://github.com/Lorenzo45/AutoMute/releases.atom',
          checkpoint: 'f469d4109bc963a303a2672bbb13588f515496625144ec12d8190781db6021c3'
  name 'AutoMute'
  homepage 'https://github.com/Lorenzo45/AutoMute'

  app 'AutoMute.app'
end
