cask 'outguess' do
  version :latest
  sha256 :no_check

  url 'https://www.rbcafe.com/download/outguess.zip',
      user_agent: :fake
  name 'Outguess'
  homepage 'https://www.rbcafe.com/software/outguess/'

  depends_on macos: '>= :mountain_lion'

  app 'Outguess.app'
end
