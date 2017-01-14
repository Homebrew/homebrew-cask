cask 'iridient-developer' do
  version '3.1.3'
  sha256 '7b28bfad2541e32b497a8816d489099189ec9b24dc9bfafa958ccd0cfbfb6208'

  url "http://www.iridientdigital.com/downloads/IridientDeveloper_#{version.no_dots}.dmg"
  name 'Iridient Developer'
  homepage 'http://www.iridientdigital.com/'

  app 'Iridient Developer.app'
end
