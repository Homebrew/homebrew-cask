cask 'freedom' do
  version '1.3.9'
  sha256 '5f9cc843836a1a6b8063ae2aa3835ba5cf81ec73ca9505d4fdd703f6dafec4c6'

  url 'https://cdn.freedom.to/installers/FreedomSetup.dmg'
  appcast 'https://cdn.freedom.to/installers/updates/mac/Appcast.xml',
          checkpoint: '621cab1cd313191561a457938518d5a0efa9f6b319a4115f66d84cede49bc352'
  name 'Freedom'
  homepage 'https://freedom.to/'

  auto_updates true

  app 'Freedom.app'
end
