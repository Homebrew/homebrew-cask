cask 'dbeaver-community' do
  version '4.2.5'
  sha256 '92d3b6b269ec7904adfab1c7429906adffaf2d6724c8cd20ae89d4678198a145'

  # github.com/serge-rider/dbeaver was verified as official when first introduced to the cask
  url "https://github.com/serge-rider/dbeaver/releases/download/#{version}/dbeaver-ce-#{version}-macos.dmg"
  appcast 'https://github.com/serge-rider/dbeaver/releases.atom',
          checkpoint: 'd0f4f02640b0b29971bbc66154a117b8d6cb63834343b1b5a9abf291c163a01e'
  name 'DBeaver Community Edition'
  homepage 'https://dbeaver.jkiss.org/'

  app 'DBeaver.app'

  caveats do
    depends_on_java('8+')
  end
end
