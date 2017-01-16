cask 'nozbe' do
  version '3.4.0'
  sha256 '32fbadbe6185c819696ac971ba840fa2b0cd638d3ddea5725623a0c3dfa7e1ee'

  url "https://files.nozbe.com/#{version.no_dots}/Nozbe.app.zip"
  name 'Nozbe'
  homepage 'https://nozbe.com/'

  app 'Nozbe.app'
end
