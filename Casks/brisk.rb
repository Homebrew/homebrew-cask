cask 'brisk' do
  version '0.1.1'
  sha256 '2aab0d94f10df48f25cd03ce041f239d92868cc4e73a9948a28f1b35bf9de2af'

  url "https://github.com/br1sk/brisk/releases/download/#{version}/Brisk.app.tar.gz"
  appcast 'https://github.com/br1sk/brisk/releases.atom',
          checkpoint: '1a23c7db144f68a9ce277c87b475a2491c8e78f9311a17ff27092228271ffca8'
  name 'Brisk'
  homepage 'https://github.com/br1sk/brisk'

  app 'Brisk.app'
end
