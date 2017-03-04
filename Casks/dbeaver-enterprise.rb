cask 'dbeaver-enterprise' do
  version '3.8.5'
  sha256 'd229c9563a76758d26dccd39a592774a672fffca17529c9c4de8cbb021e72c4f'

  url "http://dbeaver.jkiss.org/files/#{version}/dbeaver-ee-#{version}-macos.dmg"
  appcast 'http://dbeaver.jkiss.org/files/',
          checkpoint: 'e1140d4dffb82daa0c1d6d03238c68bc8104a5a01971db43b5fdfec09336ef3a'
  name 'DBeaver Enterprise Edition'
  homepage 'http://dbeaver.jkiss.org/'

  app 'Dbeaver.app'
end
