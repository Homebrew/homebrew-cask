cask 'dbeaver-community' do
  version '4.2.4'
  sha256 '8f6494142865470c9bf68e10d4d9095a874d59655a87dce8e3ff144cd4425868'

  # github.com/serge-rider/dbeaver was verified as official when first introduced to the cask
  url "https://github.com/serge-rider/dbeaver/releases/download/#{version}/dbeaver-ce-#{version}-macos.dmg"
  appcast 'https://github.com/serge-rider/dbeaver/releases.atom',
          checkpoint: '95c74597d676b481aaa93ed515f371d6813869c585040e40cae54de50fb8b658'
  name 'DBeaver Community Edition'
  homepage 'https://dbeaver.jkiss.org/'

  app 'DBeaver.app'

  caveats do
    depends_on_java('8+')
  end
end
