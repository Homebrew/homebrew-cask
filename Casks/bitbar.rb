cask 'bitbar' do
  version '1.5.1'
  sha256 'f6da47f8a84bce971d66d765c2217ad9b98fe39447756d0ff5bd387bddfb7be0'

  url "https://github.com/matryer/bitbar/releases/download/v#{version}/BitBar-v#{version}.zip"
  appcast 'https://github.com/matryer/bitbar/releases.atom',
          checkpoint: '26dc35c3b62a045f9026676618fbf7bb3528333ff3c144c4cd2e001ea046b0d4'
  name 'BitBar'
  homepage 'https://github.com/matryer/bitbar/'
  license :mit

  app 'BitBar.app'
end
