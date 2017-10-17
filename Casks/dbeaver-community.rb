cask 'dbeaver-community' do
  version '4.2.3'
  sha256 '9c9e8d357beba534ddf17f7bf651b3dbd795db0981522162264ac6f61ff20b9d'

  # github.com/serge-rider/dbeaver was verified as official when first introduced to the cask
  url "https://github.com/serge-rider/dbeaver/releases/download/#{version}/dbeaver-ce-#{version}-macos.dmg"
  appcast 'https://github.com/serge-rider/dbeaver/releases.atom',
          checkpoint: 'b5859596d84b8c5cf0182fd03d04f9fce1ffc021fd49701fb7056a44245c10b4'
  name 'DBeaver Community Edition'
  homepage 'https://dbeaver.jkiss.org/'

  app 'DBeaver.app'

  caveats do
    depends_on_java('8+')
  end
end
