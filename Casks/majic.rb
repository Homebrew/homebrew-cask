cask 'majic' do
  version :latest
  sha256 :no_check

  url 'http://erikhinterbichler.com/blog/wp-content/uploads/software/Majic.zip'
  appcast 'http://erikhinterbichler.com/blog/wp-content/uploads/updates/majic-update.xml',
          :checkpoint => '717ac8feeec7b9a8f54769dfd11219718c80020fa59f7a055893a2426b0a40c5'
  name 'Majic'
  homepage 'http://erikhinterbichler.com/apps/majic/'
  license :gratis

  app 'Majic.app'
end
