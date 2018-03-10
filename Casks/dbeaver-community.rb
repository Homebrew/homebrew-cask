cask 'dbeaver-community' do
  version '5.0.0'
  sha256 'f0699b9ea1f0511c8768a22c97b1f9b1682f3e469491891a67f40b4ac01bacb7'

  # github.com/dbeaver/dbeaver was verified as official when first introduced to the cask
  url "https://github.com/dbeaver/dbeaver/releases/download/#{version}/dbeaver-ce-#{version}-macos.dmg"
  appcast 'https://github.com/dbeaver/dbeaver/releases.atom',
          checkpoint: '70bd1920b900913b4e3bb9f41b26a705e8aea8fbda8a67e0e6dfb91ce3704a20'
  name 'DBeaver Community Edition'
  homepage 'https://dbeaver.jkiss.org/'

  app 'DBeaver.app'

  caveats do
    depends_on_java('8+')
  end
end
