cask 'outguess' do
  version :latest
  sha256 :no_check

  url 'http://www.rbcafe.com/download/outguess.zip'
  name 'Outguess'
  homepage 'http://www.rbcafe.com/software/outguess/'
  license :gratis

  depends_on macos: '>= :mountain_lion'
  depends_on arch: :intel

  app 'Outguess.app'
end
