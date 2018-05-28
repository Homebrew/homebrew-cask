cask 'dbeaver-community' do
  version '5.0.6'
  sha256 'bfcd86b6b7423018c1fb9b40b80a23150a1aed973b2ab4f0d5081a83c398cac7'

  # github.com/dbeaver/dbeaver was verified as official when first introduced to the cask
  url "https://github.com/dbeaver/dbeaver/releases/download/#{version}/dbeaver-ce-#{version}-macos.dmg"
  appcast 'https://github.com/dbeaver/dbeaver/releases.atom',
          checkpoint: '867856531ce25ffbf32d4ba2f0ad9f88ba214042fa6e29cc75bb119a19a04225'
  name 'DBeaver Community Edition'
  homepage 'https://dbeaver.jkiss.org/'

  app 'DBeaver.app'

  caveats do
    depends_on_java '8+'
  end
end
