cask 'dbeaver-community' do
  version '4.1.0'
  sha256 '5e775008555f11204f49761c43de99f66e016de75022621b8c977a96ce63799a'

  # github.com/serge-rider/dbeaver was verified as official when first introduced to the cask
  url "https://github.com/serge-rider/dbeaver/releases/download/#{version}/dbeaver-ce-#{version}-macos.dmg"
  appcast 'https://github.com/serge-rider/dbeaver/releases.atom',
          checkpoint: '8c27449d66211e0df84e62db3acf3b0981efd11b80d49dffef100f189217e4ad'
  name 'DBeaver Community Edition'
  homepage 'http://dbeaver.jkiss.org/'

  app 'DBeaver.app'

  caveats do
    depends_on_java('8+')
  end
end
