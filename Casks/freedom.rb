cask 'freedom' do
  version '1.4'
  sha256 'f5f1a845fe85f6a351945b142124d20b0248434b66ae865989654fa32d52b9a2'

  url 'https://cdn.freedom.to/installers/FreedomSetup.dmg'
  appcast 'https://cdn.freedom.to/installers/updates/mac/Appcast.xml',
          checkpoint: '03a75beaeedd14649bb7bbea31080a349784f09cbd75a564486728ea259baea7'
  name 'Freedom'
  homepage 'https://freedom.to/'

  auto_updates true

  app 'Freedom.app'
end
