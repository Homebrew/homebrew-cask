cask 'dbeaver-community' do
  version '7.0.5'
  sha256 'c3068ae49756e7b5307c8a12e73fc814bf4cc5ff7feb6a6b5a9a3dfa9bac896f'

  # github.com/dbeaver/dbeaver/ was verified as official when first introduced to the cask
  url "https://github.com/dbeaver/dbeaver/releases/download/#{version}/dbeaver-ce-#{version}-macos.dmg"
  appcast 'https://github.com/dbeaver/dbeaver/releases.atom'
  name 'DBeaver Community Edition'
  homepage 'https://dbeaver.io/'

  app 'DBeaver.app'

  caveats do
    depends_on_java '8+'
  end
end
