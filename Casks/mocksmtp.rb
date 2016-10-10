cask 'mocksmtp' do
  version :latest
  sha256 :no_check

  url 'http://mocksmtpapp.com/MockSmtp.zip'
  name 'MockSMTP'
  homepage 'http://mocksmtpapp.com/'

  app 'MockSmtp.app'
end
