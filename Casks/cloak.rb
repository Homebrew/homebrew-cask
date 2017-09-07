cask 'cloak' do
  version '2.1.5.2'
  sha256 '19e23f85d838a2ed1ca37d4307e5ddc7a42587ed100bf17ce4627bd16d866c18'

  url "https://static.getcloak.com/downloads/osx/updates/Release/Cloak-#{version}.dmg"
  appcast 'https://www.getcloak.com/updates/osx/public/',
          checkpoint: 'dd85f23259a5acc4f67f50180dffd73717b5f54e7246d091c2015e23d51716c8'
  name 'Cloak'
  homepage 'https://www.getcloak.com/'

  app 'Cloak.app'
end
