cask 'automute' do
  version '1.1'
  sha256 '9c9991790d947cb75c3e21088392c5cfe0d4da0bbc631b5d10abe1fc20353130'

  url "https://github.com/Lorenzo45/AutoMute/releases/download/v#{version}/AutoMute.zip"
  appcast 'https://github.com/Lorenzo45/AutoMute/releases.atom',
          checkpoint: 'fb3a604be3197410a71eadb289ce14665f328e886489d2e9a12659d2f9393e87'
  name 'AutoMute'
  homepage 'https://github.com/Lorenzo45/AutoMute'

  app 'AutoMute.app'
end
