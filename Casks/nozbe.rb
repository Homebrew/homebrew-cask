cask 'nozbe' do
  version '3.2.2'
  sha256 '9bed6eb0736cef1ff8749189cc21760c11edbeded238b1ac3056575963716f27'

  url "https://files.nozbe.com/#{version.no_dots}/Nozbe.app.zip"
  name 'Nozbe'
  homepage 'https://nozbe.com'
  license :freemium

  app 'Nozbe.app'
end
