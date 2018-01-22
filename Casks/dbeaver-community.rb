cask 'dbeaver-community' do
  version '4.3.3'
  sha256 'c237d802fed29f6e1809eb6f8925c4d6fe71b7a70aadfc75f59fc1b214078171'

  # github.com/dbeaver/dbeaver was verified as official when first introduced to the cask
  url "https://github.com/dbeaver/dbeaver/releases/download/#{version}/dbeaver-ce-#{version}-macos.dmg"
  appcast 'https://github.com/dbeaver/dbeaver/releases.atom',
          checkpoint: '58e65203a31a2b1f900b5fefce591a52cc9da3bae6c0976ee62a55a9f3579879'
  name 'DBeaver Community Edition'
  homepage 'https://dbeaver.jkiss.org/'

  app 'DBeaver.app'

  caveats do
    depends_on_java('8+')
  end
end
