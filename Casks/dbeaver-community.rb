cask 'dbeaver-community' do
  version '4.0.6'
  sha256 'e70e88425ef0eaf1b4893d79c551a77dfd17ab6a74df8c35e860d904cd56e237'

  # github.com/serge-rider/dbeaver was verified as official when first introduced to the cask
  url "https://github.com/serge-rider/dbeaver/releases/download/#{version}/dbeaver-ce-#{version}-macos.dmg"
  appcast 'https://github.com/serge-rider/dbeaver/releases.atom',
          checkpoint: '36c6a8c88c7a8ba8f1a38dcfba936e76626e65c87ad0da47966e48dcc61b91c6'
  name 'DBeaver Community Edition'
  homepage 'http://dbeaver.jkiss.org/'

  app 'DBeaver.app'

  caveats do
    depends_on_java('8+')
  end
end
