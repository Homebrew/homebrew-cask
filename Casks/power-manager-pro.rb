cask 'power-manager-pro' do
  version '4.5.3'
  sha256 '5207bb73737138be979fa82c74377dd33aed88bf2f201513fb1a5869b0e68f14'

  url 'https://www.dssw.co.uk/powermanager/dsswpowermanagerpro.dmg'
  appcast 'https://version.dssw.co.uk/powermanager/professional',
          checkpoint: 'a68a71c9049009adacfbdf295a6d6e14726e99d65de67234a5a3a68bff63ba3a'
  name 'Power Manager Pro'
  homepage 'https://www.dssw.co.uk/powermanager'
  license :commercial

  auto_updates true
  depends_on macos: '>= :lion'

  app 'Power Manager Pro.app'
end
