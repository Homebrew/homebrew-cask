cask 'dbeaver-community' do
  version '4.2.6'
  sha256 'efc4cf5ee19fe2023bd849a8aaa60aca099cd6f741cc8b8556638ece345d43d0'

  # github.com/serge-rider/dbeaver was verified as official when first introduced to the cask
  url "https://github.com/serge-rider/dbeaver/releases/download/#{version}/dbeaver-ce-#{version}-macos.dmg"
  appcast 'https://github.com/serge-rider/dbeaver/releases.atom',
          checkpoint: '348fc4389c3ffbbb322d21d467e9a6d90ac575858dbb6be77dc85b344074696a'
  name 'DBeaver Community Edition'
  homepage 'https://dbeaver.jkiss.org/'

  app 'DBeaver.app'

  caveats do
    depends_on_java('8+')
  end
end
