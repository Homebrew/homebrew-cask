cask 'refined-github-safari' do
  version '2.1.1'
  sha256 '4a912c723abd3d49577437e6ec7d1444ec6bdb8082673b95334ff3f28d08b6ec'

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
