cask 'ghostlab' do
  version '2.1.2'
  sha256 'ad30b19c9190b0fa173e4cd3bc63a56afe2f2d7fc93b45296c21ea2a50c5316e'

  url "https://awesome.vanamco.com/Ghostlab#{version.major}/downloads/Ghostlab#{version.major}.dmg"
  appcast "https://awesome.vanamco.com/Ghostlab2/update/ghostlab#{version.major}-cast.xml?vco=trkd",
          checkpoint: '243c77ba04b68fb6af58aed4467f7664d5bf79e88eff4726c48ca157d98a7490'
  name 'Ghostlab'
  homepage 'https://vanamco.com/ghostlab/'

  app "Ghostlab#{version.major}.app"
end
