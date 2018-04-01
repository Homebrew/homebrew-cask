cask 'nozbe' do
  version '3.6.3'
  sha256 'ab15029f51d0bd92645b64e04ceb503f1797728a25a934d604e1189a697bc348'

  url "https://files.nozbe.com/#{version.no_dots}/Nozbe.app.zip"
  name 'Nozbe'
  homepage 'https://nozbe.com/'

  app 'Nozbe.app'
end
