cask 'clean-me' do
  version '1.1.0'
  sha256 'c06e66eec6da771388316df67b2404d8f19dc0c8a70c3e06cf762f52e100bee4'

  url "https://github.com/Kevin-De-Koninck/Clean-Me/releases/download/v#{version}/Clean.Me.app.zip"
  appcast 'https://github.com/Kevin-De-Koninck/Clean-Me/releases.atom',
          checkpoint: '60a26614bb62b16d67429fefb8ad56c8b10ef10e2df72016f8c78eb0f58f16bf'
  name 'Clean-me'
  homepage 'https://github.com/Kevin-De-Koninck/Clean-Me'

  app 'Clean Me.app'
end
