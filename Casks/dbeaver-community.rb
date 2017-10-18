cask 'dbeaver-community' do
  version '4.2.2'
  sha256 '9c8c4f16ff9cf5be2abcf729d985b433f8196b51f4cedc488d993a5ff1eee5cc'

  # github.com/serge-rider/dbeaver was verified as official when first introduced to the cask
  url "https://github.com/serge-rider/dbeaver/releases/download/#{version}/dbeaver-ce-#{version}-macos.dmg"
  appcast 'https://github.com/serge-rider/dbeaver/releases.atom',
          checkpoint: '47716cee28119d038dcff9474d25cc94940ec26f220ec561bcea5e061bc33765'
  name 'DBeaver Community Edition'
  homepage 'https://dbeaver.jkiss.org/'

  app 'DBeaver.app'

  caveats do
    depends_on_java('8+')
  end
end
