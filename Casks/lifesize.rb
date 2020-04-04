cask 'lifesize' do
  version '2.210.2639'
  sha256 '142514768b655e6600b55b1ee0361733b4cab3ba5c0400aa270ac31b4c4b5497'

  # download.lifesizecloud.com/Lifesize- was verified as official when first introduced to the cask
  url "https://download.lifesizecloud.com/Lifesize-#{version}.dmg"
  name 'lifesize'
  homepage 'https://www.lifesize.com/'

  app 'Lifesize.app'
end
