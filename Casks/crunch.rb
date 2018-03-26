cask 'crunch' do
  version '1.0.0'
  sha256 'd026dd0ad75327b9cdc7c26d7d48f69be195b5f339abc28c8446f8cae58ba8cc'

  url "https://github.com/chrissimpkins/Crunch/releases/download/v#{version}/Crunch-Installer.dmg"
  appcast 'https://github.com/chrissimpkins/Crunch/releases.atom',
          checkpoint: '32a4d6304199eec025b2bbcecc1984e51558816e14cc0efbeac37c796bf5f0e4'
  name 'Crunch'
  homepage 'https://github.com/chrissimpkins/Crunch'
  
  depends_on formula: [ 'libpng', 'little-cms2' ]

  app 'Crunch.app'
end
