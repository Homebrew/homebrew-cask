cask 'appdelete' do
  version '4.3'
  sha256 'aba54172b1ef09913e6eb6a18c28951249daee0ac0447c26dd2b15490846660d'

  url 'http://www.reggieashworth.com/downloads/AppDelete.dmg'
  appcast "http://www.reggieashworth.com/AD#{version.major}Appcast.xml",
          checkpoint: '298bc31280f5f0b0bd7f623d2077b55b58ec29d8e520ea1fc501c880083035b6'
  name 'AppDelete'
  homepage 'http://www.reggieashworth.com/appdelete'

  app 'AppDelete.app'
end
