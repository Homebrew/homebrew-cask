cask 'subtitle-master' do
  version '2.0.1'
  sha256 '8936495ef4aefe9bf59c28dd4d5a92574c194062067c318667e3f55428245304'

  # github.com/subtitle-master/subtitlemaster was verified as official when first introduced to the cask
  url "https://github.com/subtitle-master/subtitlemaster/releases/download/v#{version}-SNAPSHOT/Subtitle.Master-osx-v#{version}-SNAPSHOT.zip"
  appcast 'https://github.com/subtitle-master/subtitlemaster/releases.atom',
          checkpoint: 'e12b1034eeb5c53a908d9ddaea48e3e58d408853b4d0836bbbc50334e7a70878'
  name 'Subtitle Master'
  homepage 'http://subtitlemaster.com/'

  app 'Subtitle Master.app'
end
