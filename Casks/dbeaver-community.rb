cask 'dbeaver-community' do
  version '4.3.5'
  sha256 '6955ab2d6a98747594b54cbd319b9386f4efdb0c6ccbe821051095f4a5b5b64e'

  # github.com/dbeaver/dbeaver was verified as official when first introduced to the cask
  url "https://github.com/dbeaver/dbeaver/releases/download/#{version}/dbeaver-ce-#{version}-macos.dmg"
  appcast 'https://github.com/dbeaver/dbeaver/releases.atom',
          checkpoint: 'bcff07e5dd423e503c8cf29259eb51242df69b27ee8a5ef0d4a15c2c1de47b44'
  name 'DBeaver Community Edition'
  homepage 'https://dbeaver.jkiss.org/'

  app 'DBeaver.app'

  caveats do
    depends_on_java('8+')
  end
end
