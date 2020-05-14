cask 'lifesize' do
  version '2.210.2665'
  sha256 '685b7f4ddfa2799824123fe19a9f4a8c8339a79e2d4b32cf1f6768019709be7b'

  # download.lifesizecloud.com/ was verified as official when first introduced to the cask
  url "https://download.lifesizecloud.com/Lifesize-#{version}.dmg"
  name 'lifesize'
  homepage 'https://www.lifesize.com/'

  app 'Lifesize.app'
end
