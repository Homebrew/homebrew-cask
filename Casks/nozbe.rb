cask 'nozbe' do
  version '3.5.2'
  sha256 '957a8b9d750dcfe07cf33d2d4d1a026b7c09c276688993e7d253179534f880e7'

  url "https://files.nozbe.com/#{version.no_dots}/Nozbe.app.zip"
  name 'Nozbe'
  homepage 'https://nozbe.com/'

  app 'Nozbe.app'
end
