cask 'audirvana-plus' do
  version '2.3.3'
  sha256 'be36c7e6f0bebe33c0e7925c3fcae2e1b310e57d271865079d9d9cff044759af'

  url "https://audirvana.com/delivery/AudirvanaPlus_#{version}.dmg"
  appcast 'https://audirvana.com/delivery/audirvanaplus2_appcast.xml',
          checkpoint: 'fc38674eaae16b6eea6d67615636b9653f309663fbad4ddfcbafe4b32cf4dd7c'
  name 'Audirvana Plus 2'
  homepage 'https://audirvana.com/'
  license :commercial

  app 'Audirvana Plus.app'
end
