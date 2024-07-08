cask 'gplayer' do
  version :latest
  sha256 :no_check

  url 'https://ztgg-crm-us.oss-us-west-1.aliyuncs.com/software/g-player/prod/GPlayer.dmg'
  name 'GPlayer'
  homepage 'https://ztgg-crm-us.oss-us-west-1.aliyuncs.com/software/g-player/prod/GPlayer.dmg'

  app 'GPlayer.app'
end
