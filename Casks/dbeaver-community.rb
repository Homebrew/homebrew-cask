cask 'dbeaver-community' do
  version '4.2.1'
  sha256 '44018036bdc8b165fd7b92d66863c04506b953382fc04d791822e0eba4a1cf0a'

  # github.com/serge-rider/dbeaver was verified as official when first introduced to the cask
  url "https://github.com/serge-rider/dbeaver/releases/download/#{version}/dbeaver-ce-#{version}-macos.dmg"
  appcast 'https://github.com/serge-rider/dbeaver/releases.atom',
          checkpoint: '12f9b8d414026dbea590c0aa42b9693e25a7c178f6e3f4a7260d091a65551bb0'
  name 'DBeaver Community Edition'
  homepage 'https://dbeaver.jkiss.org/'

  app 'DBeaver.app'

  caveats do
    depends_on_java('8+')
  end
end
