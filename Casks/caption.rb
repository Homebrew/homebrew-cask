cask 'caption' do
  version '1.0.0'
  sha256 '29a9e264650dcd6a92b1da2942b5b6628dc1c751742f4b2db8ebe6d6218922d3'

  # github.com/gielcobben/Caption was verified as official when first introduced to the cask
  url "https://github.com/gielcobben/Caption/releases/download/v#{version}/Caption-v#{version}-darwin_x64.dmg"
  appcast 'https://github.com/gielcobben/Caption/releases.atom',
          checkpoint: '843fc2de69b344c7e1877ba8d4452f6be444c21a4f02eb8debb9f5c040d4a936'
  name 'Caption'
  homepage 'https://getcaption.co/'

  app 'Caption.app'
end
