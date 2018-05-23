cask 'instead' do
  version '3.2.1'
  sha256 '34ca0aac226f4c2f87cb0db4217e09c8deed2a29c6d7d67871bef1087796caa7'

  # github.com/instead-hub/instead was verified as official when first introduced to the cask
  url "https://github.com/instead-hub/instead/releases/download/#{version}/Instead-#{version}.dmg"
  appcast 'https://github.com/instead-hub/instead/releases.atom',
          checkpoint: '06653147040958627385de015edd4f9c18d94e9c9c88b1ee2f449845cd92f32a'
  name 'INSTEAD'
  homepage 'https://instead.syscall.ru/index.html'

  app 'Instead.app'
end
