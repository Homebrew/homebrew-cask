cask 'dbeaver-community' do
  version '4.3.0'
  sha256 '5ccc4888eab1759525f25950875565e74ae93e6fe85b7cbc72d1f0fc43a3a2de'

  # github.com/serge-rider/dbeaver was verified as official when first introduced to the cask
  url "https://github.com/serge-rider/dbeaver/releases/download/#{version}/dbeaver-ce-#{version}-macos.dmg"
  appcast 'https://github.com/serge-rider/dbeaver/releases.atom',
          checkpoint: 'b66363293a549fb5b870c2dd4ea2db2f766e1e011b55ed73163d6af4c670a6c9'
  name 'DBeaver Community Edition'
  homepage 'https://dbeaver.jkiss.org/'

  app 'DBeaver.app'

  caveats do
    depends_on_java('8+')
  end
end
