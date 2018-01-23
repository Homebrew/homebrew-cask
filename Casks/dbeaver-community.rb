cask 'dbeaver-community' do
  version '4.3.3.1'
  sha256 '94d01ba63d2f1e7c214f9695dbc82190c7da09a70026bb39cd114e53d4949ed8'

  # github.com/dbeaver/dbeaver was verified as official when first introduced to the cask
  url "https://github.com/dbeaver/dbeaver/releases/download/#{version}/dbeaver-ce-#{version.major_minor_patch}-macos.dmg"
  appcast 'https://github.com/dbeaver/dbeaver/releases.atom',
          checkpoint: '2d2261582453b80c8a8cd65201f31143a27f4a471711131b79062eb36f35393d'
  name 'DBeaver Community Edition'
  homepage 'https://dbeaver.jkiss.org/'

  app 'DBeaver.app'

  caveats do
    depends_on_java('8+')
  end
end
