cask 'dbeaver-community' do
  version '4.3.2'
  sha256 '9a1eda6ca97f8ebdaa4a82acd240514a8a19ab2dc4baa1f3e2d6377276ae1601'

  # github.com/dbeaver/dbeaver was verified as official when first introduced to the cask
  url "https://github.com/dbeaver/dbeaver/releases/download/#{version}/dbeaver-ce-#{version}-macos.dmg"
  appcast 'https://github.com/dbeaver/dbeaver/releases.atom',
          checkpoint: 'dfa1b7052ed5b27d46fe05dc87dea17d9c9bcef9db2e77ed902818dfa2053552'
  name 'DBeaver Community Edition'
  homepage 'https://dbeaver.jkiss.org/'

  app 'DBeaver.app'

  caveats do
    depends_on_java('8+')
  end
end
