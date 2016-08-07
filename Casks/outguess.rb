cask 'outguess' do
  version :latest
  sha256 :no_check

  url 'https://www.rbcafe.com/download/outguess.zip'
  name 'Outguess'
  homepage 'https://www.rbcafe.com/softwares/outguess/'
  license :gratis

  depends_on macos: '>= :mountain_lion'
  depends_on arch: :intel

  app 'Outguess.app'
end
