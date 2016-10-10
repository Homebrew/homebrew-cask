cask 'qiyimedia' do
  version :latest
  sha256 :no_check

  url 'http://mbdapp.iqiyi.com/j/ot/iQIYIMedia_003.dmg'
  name '爱奇艺视频'
  homepage 'https://www.iqiyi.com'

  app '爱奇艺.app'

  zap delete: [
                '~/Library/Containers/com.iqiyi.yingyin',
              ]
end
