cask 'pros' do
  version '3.1.0'
  sha256 '0f3394afa80e8975213c1a109ab99e1785a07b4dda568c9926439ae3d8738643'

  # github.com/purduesigbots/pros-cli was verified as official when first introduced to the cask
  url "https://github.com/purduesigbots/pros-cli3/releases/download/#{version}/pros-cli-mac.zip"
  appcast 'https://github.com/purduesigbots/pros-cli3/releases.atom'
  name 'PROS CLI'
  homepage 'https://pros.cs.purdue.edu/'

  depends_on formula: 'openssl'
  depends_on cask: 'gcc-arm-embedded'

  app 'PROS CLI.app'
  binary "#{appdir}/PROS CLI.app/Contents/MacOS/prosv5"
  binary "#{appdir}/PROS CLI.app/Contents/MacOS/intercept-c++"
  binary "#{appdir}/PROS CLI.app/Contents/MacOS/intercept-cc"
end
