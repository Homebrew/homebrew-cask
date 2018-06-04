cask 'dbeaver-community' do
  version '5.1.0'
  sha256 '3d6292cbb1ffdc5e1f6418cbe20d2b8b2a45a5023c018d78fb992705d1680576'

  # github.com/dbeaver/dbeaver was verified as official when first introduced to the cask
  url "https://github.com/dbeaver/dbeaver/releases/download/#{version}/dbeaver-ce-#{version}-macos.dmg"
  appcast 'https://github.com/dbeaver/dbeaver/releases.atom',
          checkpoint: '44fbfa5ab7198b728ae9c6ac825ee53c8aa6ef5413b26a786ce0c2996bc4f55c'
  name 'DBeaver Community Edition'
  homepage 'https://dbeaver.jkiss.org/'

  app 'DBeaver.app'

  caveats do
    depends_on_java '8+'
  end
end
