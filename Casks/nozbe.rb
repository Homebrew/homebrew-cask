cask 'nozbe' do
  version '3.6.1'
  sha256 '8a2e5f802d52e80f914be11755e5f688595054c35dd785f12fff319595c2f633'

  url "https://files.nozbe.com/#{version.no_dots}/Nozbe.app.zip"
  name 'Nozbe'
  homepage 'https://nozbe.com/'

  app 'Nozbe.app'
end
