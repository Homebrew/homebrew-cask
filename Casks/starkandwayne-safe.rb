cask 'starkandwayne-safe' do
  version '0.7.0'
  sha256 'cae4e9990e103113a38b2851cee6f0fc12adf2efd6edeb31359ea6a58305510e'

  url "https://github.com/starkandwayne/safe/releases/download/v#{version}/safe-darwin-amd64"
  appcast 'https://github.com/starkandwayne/safe/releases.atom',
          checkpoint: '7ae1d5999b802c149e4ddaf5f8095787293f1ff54a31c98630f54c4e1fc3ade9'
  name 'safe'
  homepage 'https://github.com/starkandwayne/safe'

  conflicts_with cask: 'safe'
  depends_on formula: 'vault'

  binary 'safe-darwin-amd64',
         target: 'safe'
end
