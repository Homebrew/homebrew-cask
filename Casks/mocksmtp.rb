cask :v1 => 'mocksmtp' do
  version :latest
  sha256 :no_check

  url 'http://mocksmtpapp.com/MockSmtp.zip'
  name 'MockSMTP'
  homepage 'http://mocksmtpapp.com/'
  license :commercial

  app 'MockSmtp.app'
end
