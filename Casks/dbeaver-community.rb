cask 'dbeaver-community' do
  version '5.0.2'
  sha256 '198c88a9c5e0b0fe2279faad1c54651548bdd8336b71ac02ec513452c6ee5920'

  # github.com/dbeaver/dbeaver was verified as official when first introduced to the cask
  url "https://github.com/dbeaver/dbeaver/releases/download/#{version}/dbeaver-ce-#{version}-macos.dmg"
  appcast 'https://github.com/dbeaver/dbeaver/releases.atom',
          checkpoint: '441c3da000b34fc774c96228da098d74c0801c6972b2fafc9d213c4d40366cfb'
  name 'DBeaver Community Edition'
  homepage 'https://dbeaver.jkiss.org/'

  app 'DBeaver.app'

  caveats do
    depends_on_java('8+')
  end
end
