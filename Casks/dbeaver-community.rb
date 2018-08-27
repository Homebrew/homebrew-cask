cask 'dbeaver-community' do
  version '5.1.6'
  sha256 'd3aeaf106a6c3bebafd7627a2df40dda3c9b9a84661741fbbb7f3050f117b8b1'

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
