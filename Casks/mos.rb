cask 'mos' do
  version '2.2.0'
  sha256 'fc8f5359f9d6e826741ef59c975a8ffe9be1cadda22933e6d0f40929e2413da3'

  # github.com/Caldis/Mos was verified as official when first introduced to the cask
  url "https://github.com/Caldis/Mos/releases/download/#{version}/Mos.Versions.#{version}.dmg"
  appcast 'https://github.com/Caldis/Mos/releases.atom',
          checkpoint: '3ddaddac825c26ac3cb4dd57826770e524a498bd4d7d364627fac510baa20459'
  name 'Mos'
  homepage 'https://mos.caldis.me/'

  app 'Mos.app'

  zap trash: '~/Library/Preferences/com.caldis.Mos.plist'
end
