cask 'dbeaver-enterprise' do
  version '4.1.1'
  sha256 '345fa36b74a08512d868e0232a3f5e043c132d1fa1e90ad57040d4d48c85fa6c'

  url "https://dbeaver.com/files/#{version}/dbeaver-ee-#{version}-macos.dmg"
  appcast 'https://dbeaver.com/files/',
          checkpoint: 'e96df7f78b09351188ce5e9eb0d0952fe14c0322e4b41b1d1ce6760d9cbab16a'
  name 'DBeaver Enterprise Edition'
  homepage 'https://dbeaver.com/'

  app 'Dbeaver.app'

  caveats do
    depends_on_java('8+')
  end
end
