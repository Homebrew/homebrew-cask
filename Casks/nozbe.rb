cask 'nozbe' do
  version '3.2.0'
  sha256 '60daa5f59981d96e7ee5c94634102b9ac7ba8d69c3637da427e7a3810d8044b2'

  url "https://files.nozbe.com/#{version.no_dots}/Nozbe.app.zip"
  name 'Nozbe'
  homepage 'https://nozbe.com'
  license :freemium

  app 'Nozbe.app'
end
