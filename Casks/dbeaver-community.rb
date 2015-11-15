cask :v1 => 'dbeaver-community' do
  version '3.5.3'
  sha256 'ef24a7081119514a084f8748c2d63f50519d6a232146565bba4754de0fe8ef90'

  url "http://dbeaver.jkiss.org/files/#{version}/dbeaver-ce-#{version}-macos.dmg"
  name 'DBeaver Community Edition'
  homepage 'http://dbeaver.jkiss.org/'
  license :oss

  app 'Dbeaver.app'
end
