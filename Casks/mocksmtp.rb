class Mocksmtp < Cask
  version :latest
  sha256 :no_check

  url 'http://mocksmtpapp.com/MockSmtp.zip'
  homepage 'http://mocksmtpapp.com/'
  license :unknown

  app 'MockSmtp.app'
end
