cask 'lifesize' do
  version '2.210.2652'
  sha256 '341b0240098c849c601b9183fc4baf4f670ae3f904a9a673f2b745ee8623c6a6'

  # download.lifesizecloud.com/ was verified as official when first introduced to the cask
  url "https://download.lifesizecloud.com/Lifesize-#{version}.dmg"
  name 'lifesize'
  homepage 'https://www.lifesize.com/'

  app 'Lifesize.app'
end
