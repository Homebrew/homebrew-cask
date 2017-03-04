cask 'freedom' do
  version '1.4.2'
  sha256 'cf1e9c1174c3e1d5cd98ee1d8598d4e6a209edc4ce4aa3e618f23230ef98de3d'

  url 'https://cdn.freedom.to/installers/FreedomSetup.dmg'
  appcast 'https://cdn.freedom.to/installers/updates/mac/Appcast.xml',
          checkpoint: '0605cda5d267294eabb156a9e268be230367b7153d48638a32ef89cc4d789e93'
  name 'Freedom'
  homepage 'https://freedom.to/'

  auto_updates true

  app 'Freedom.app'
end
