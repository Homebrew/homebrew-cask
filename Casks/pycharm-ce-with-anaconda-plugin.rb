cask 'pycharm-ce-with-anaconda-plugin' do
  version '2019.1.1'
  sha256 '85da3d5ecfdd91d469b91e246bef4e89b6b17253f75d811d47d6b5785936a264'

  url 'https://download.jetbrains.com/python/pycharm-community-anaconda-2019.1.1.dmg'
  name 'PyCharm for Anaconda Community Edition'
  homepage 'https://www.jetbrains.com/pycharm/promo/anaconda/'

  app 'PyCharm CE with Anaconda plugin.app'
end
