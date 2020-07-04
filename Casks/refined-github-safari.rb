cask 'refined-github-safari' do
  version '2.0.42'
  sha256 'd6feecc0443aaa5d7e43f59287d16bfc60c8b31258be5a3e7ea756d4ea3f391a'

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
