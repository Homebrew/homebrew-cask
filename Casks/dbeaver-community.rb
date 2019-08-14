cask 'dbeaver-community' do
  version '6.1.4'
  sha256 'a8d294ebf8719c97ce8ee69b4d4318a01fcb5d7dadb1e5033ef91ea64bf0dc5e'

  # github.com/dbeaver/dbeaver was verified as official when first introduced to the cask
  url "https://github.com/dbeaver/dbeaver/releases/download/#{version}/dbeaver-ce-#{version}-macos.dmg"
  appcast 'https://github.com/dbeaver/dbeaver/releases.atom'
  name 'DBeaver Community Edition'
  homepage 'https://dbeaver.io/'

  app 'DBeaver.app'

  caveats do
    depends_on_java '8+'
  end
end
