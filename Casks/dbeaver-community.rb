cask 'dbeaver-community' do
  version '4.3.1'
  sha256 'a863aee5b11ae276ba9e921a8fa9bd8355ae467e9679f1879025e5c8a58bc8a6'

  # github.com/serge-rider/dbeaver was verified as official when first introduced to the cask
  url "https://github.com/serge-rider/dbeaver/releases/download/#{version}/dbeaver-ce-#{version}-macos.dmg"
  appcast 'https://github.com/serge-rider/dbeaver/releases.atom',
          checkpoint: 'c31e915c53898674f80bf638b77d86e66267ea526033de8cb7a23a3eff6212f2'
  name 'DBeaver Community Edition'
  homepage 'https://dbeaver.jkiss.org/'

  app 'DBeaver.app'

  caveats do
    depends_on_java('8+')
  end
end
