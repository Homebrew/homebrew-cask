cask 'outguess' do
  version '1.1.1'
  sha256 '13255302a624cec644ea402cff3507f69588755b5ea99ee178d428b1a3c500df'

  url 'http://www.rbcafe.com/download/outguess.zip'
  name 'Outguess'
  homepage 'http://www.rbcafe.com/softwares/outguess/'
  license :gratis

  depends_on macos: '>= :mountain_lion'
  depends_on arch: :intel

  app 'Outguess.app'
end
