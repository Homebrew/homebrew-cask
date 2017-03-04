cask 'caption' do
  version '1.1.0'
  sha256 '311142b4aa1418bfc680b9de4287f89ce731a55a2df16b3cd6624a0d284fe40a'

  # github.com/gielcobben/Caption was verified as official when first introduced to the cask
  url "https://github.com/gielcobben/Caption/releases/download/v#{version}/Caption-v#{version}-darwin_x64.dmg"
  appcast 'https://github.com/gielcobben/Caption/releases.atom',
          checkpoint: '33b62b058b92a2bcf0f91ab3a42d62b787fa41ed54ff7a518fc4418ebc22552a'
  name 'Caption'
  homepage 'https://getcaption.co/'

  app 'Caption.app'
end
