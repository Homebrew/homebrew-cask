cask 'menumeters' do
  version '1.9.8'
  sha256 '7e034975be0d7eac033f0d4fcaf8725d435280411358d50a9828ce62f8bc1cca'

  # github.com/yujitach/MenuMeters was verified as official when first introduced to the cask
  url "https://github.com/yujitach/MenuMeters/releases/download/#{version}/MenuMeters_#{version.major_minor_patch}.zip"
  appcast 'https://github.com/yujitach/MenuMeters/releases.atom'
  name 'MenuMeters for El Capitan (and later)'
  homepage 'https://member.ipmu.jp/yuji.tachikawa/MenuMetersElCapitan/'

  depends_on macos: '>= :el_capitan'

  prefpane 'MenuMeters.prefPane'

  zap trash: '~/Library/Preferences/com.ragingmenace.MenuMeters.plist'
end
