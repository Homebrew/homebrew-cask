cask 'dbeaver-community' do
  version '4.1.3'
  sha256 '38c7fa69791bfa169d06d32222a74274d0776d02e2e8890c02fe0d9d571b391d'

  # github.com/serge-rider/dbeaver was verified as official when first introduced to the cask
  url "https://github.com/serge-rider/dbeaver/releases/download/#{version}/dbeaver-ce-#{version}-macos.dmg"
  appcast 'https://github.com/serge-rider/dbeaver/releases.atom',
          checkpoint: 'cb702cead4abdc1d103efcdb5c515e53c37e4e2fef63d618daf33c0d31df6619'
  name 'DBeaver Community Edition'
  homepage 'http://dbeaver.jkiss.org/'

  app 'DBeaver.app'

  caveats do
    depends_on_java('8+')
  end
end
