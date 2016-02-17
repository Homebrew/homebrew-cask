cask 'bitbar' do
  version '1.5.1'
  sha256 '28a99ad999567fb4399712d78c7592bb78bfd7cf634f0179b129810930959594'

  url "https://github.com/matryer/bitbar/releases/download/v#{version}/BitBar-v#{version}.zip"
  appcast 'https://github.com/matryer/bitbar/releases.atom',
          checkpoint: '26dc35c3b62a045f9026676618fbf7bb3528333ff3c144c4cd2e001ea046b0d4'
  name 'BitBar'
  homepage 'https://github.com/matryer/bitbar/'
  license :mit

  app 'BitBar.app'
end
