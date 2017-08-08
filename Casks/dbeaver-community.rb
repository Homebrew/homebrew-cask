cask 'dbeaver-community' do
  version '4.1.2'
  sha256 '16da10fdec55bf5c45ed0be344e2dc0da75ded9d86ffbc6eae0a4c94f454783c'

  # github.com/serge-rider/dbeaver was verified as official when first introduced to the cask
  url "https://github.com/serge-rider/dbeaver/releases/download/#{version}/dbeaver-ce-#{version}-macos.dmg"
  appcast 'https://github.com/serge-rider/dbeaver/releases.atom',
          checkpoint: '9c5b919ff4826130c412eb4a8d3f634e9ab4c68ba5b6c2c40771e49d0c9bbd84'
  name 'DBeaver Community Edition'
  homepage 'http://dbeaver.jkiss.org/'

  app 'DBeaver.app'

  caveats do
    depends_on_java('8+')
  end
end
