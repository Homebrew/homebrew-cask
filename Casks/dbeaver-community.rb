cask 'dbeaver-community' do
  version '4.0.8'
  sha256 'a20ac8c269d7f9827a858dec40e097dfef8c18bf6e6e9bd756769784d63edf29'

  # github.com/serge-rider/dbeaver was verified as official when first introduced to the cask
  url "https://github.com/serge-rider/dbeaver/releases/download/#{version}/dbeaver-ce-#{version}-macos.dmg"
  appcast 'https://github.com/serge-rider/dbeaver/releases.atom',
          checkpoint: '819404d93e01f2fd30b525bc64234f6342a5f4dc150073b609d7850f45cfa3cc'
  name 'DBeaver Community Edition'
  homepage 'http://dbeaver.jkiss.org/'

  app 'DBeaver.app'

  caveats do
    depends_on_java('8+')
  end
end
