cask 'refined-github-safari' do
  version '2.0.28'
  sha256 'e01c30935b789a5fa3c61579bfe50e67d8c654cce6cc48e01dff5a0f64c77c36'

  url "https://github.com/lautis/refined-github-safari/releases/download/v#{version}/Refined-GitHub-for-Safari.zip"
  appcast 'https://github.com/lautis/refined-github-safari/releases.atom'
  name 'Refined GitHub for Safari'
  homepage 'https://github.com/lautis/refined-github-safari'

  depends_on macos: '>= :mojave'

  app 'Refined GitHub for Safari.app'

  zap delete: [
                '~/Library/Application Scripts/fi.lautanala.refined-github',
                '~/Library/Application Scripts/fi.lautanala.refined-github-extension',
                '~/Library/Containers/fi.lautanala.refined-github',
                '~/Library/Containers/fi.lautanala.refined-github-extenstion',
              ]
end
