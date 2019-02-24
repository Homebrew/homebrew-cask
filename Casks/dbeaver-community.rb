cask 'dbeaver-community' do
  version '5.3.5'
  sha256 'e2159afb5dfaf911f897655b9a4d9f2cd70d7324d7f0c64e9c2456a77d11f0b9'

  # github.com/dbeaver/dbeaver was verified as official when first introduced to the cask
  url "https://github.com/dbeaver/dbeaver/releases/download/#{version}/dbeaver-ce-#{version}-macos.dmg"
  appcast 'https://github.com/dbeaver/dbeaver/releases.atom'
  name 'DBeaver Community Edition'
  homepage 'https://dbeaver.jkiss.org/'

  app 'DBeaver.app'

  caveats do
    depends_on_java '8+'
  end
end
