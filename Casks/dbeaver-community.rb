cask :v1 => 'dbeaver-community' do
  version '3.5.4'
  sha256 '40ed8db11769c7f152bffe590e78addb864cc83082b8f1976ca7020121f5b61c'

  url "http://dbeaver.jkiss.org/files/#{version}/dbeaver-ce-#{version}-macos.dmg"
  name 'DBeaver Community Edition'
  homepage 'http://dbeaver.jkiss.org/'
  license :oss

  app 'Dbeaver.app'
end
