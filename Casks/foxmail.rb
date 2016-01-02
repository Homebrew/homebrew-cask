cask 'foxmail' do
  version :latest
  sha256 :no_check

  url 'http://www.foxmail.com/mac/download'
  name 'Foxmail'
  homepage 'http://www.foxmail.com'
  license :gratis

  app 'Foxmail.app'
end
