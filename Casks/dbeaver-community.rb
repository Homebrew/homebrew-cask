cask 'dbeaver-community' do
  version '4.3.4'
  sha256 'c0d356d33015d43596286c6f722b3bf02ea6f792c3c1df5f5d4270f940784d1d'

  # github.com/dbeaver/dbeaver was verified as official when first introduced to the cask
  url "https://github.com/dbeaver/dbeaver/releases/download/#{version}/dbeaver-ce-#{version}-macos.dmg"
  appcast 'https://github.com/dbeaver/dbeaver/releases.atom',
          checkpoint: 'e92f97d31ccfe51457bcfe76391493c5116e8ef2879f7ff98c2eccebd936ede1'
  name 'DBeaver Community Edition'
  homepage 'https://dbeaver.jkiss.org/'

  app 'DBeaver.app'

  caveats do
    depends_on_java('8+')
  end
end
