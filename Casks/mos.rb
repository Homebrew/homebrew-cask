cask 'mos' do
  version '2.2.2'
  sha256 '93fec3925fb2761ecd5ac92cb5fe1eba8fbaf68e8a50717c3aa2b2df4a0cc601'

  # github.com/Caldis/Mos was verified as official when first introduced to the cask
  url "https://github.com/Caldis/Mos/releases/download/#{version}/Mos.Versions.#{version}.dmg"
  appcast 'https://github.com/Caldis/Mos/releases.atom',
          checkpoint: '716e6e213751273884cf83927cece4c42350c61eae968bfedb03938777e8512f'
  name 'Mos'
  homepage 'https://mos.caldis.me/'

  app 'Mos.app'

  zap trash: '~/Library/Preferences/com.caldis.Mos.plist'
end
