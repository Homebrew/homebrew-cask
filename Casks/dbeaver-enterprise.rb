cask 'dbeaver-enterprise' do
  version '4.0.4'
  sha256 'bad3df2ca3ad63c5fb177269fddc0f24cf89d3a51012c789626ace26f4d26f96'

  url "http://dbeaver.jkiss.org/files/#{version}/dbeaver-ee-#{version}-macos.dmg"
  appcast 'http://dbeaver.jkiss.org/files/',
          checkpoint: '2ab25ff4d79c97015ef4672cb3a94677f23e63b96b8a592952370846f0148622'
  name 'DBeaver Enterprise Edition'
  homepage 'http://dbeaver.jkiss.org/'

  app 'Dbeaver.app'
end
