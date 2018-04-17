cask 'aptanastudio' do
  version '3.6.1'
  sha256 '0d7ea3079822b26105e74d27d8a64bb138f5ab57705f6451a67432190c0697d8'

  # github.com/aptana/studio3 was verified as official when first introduced to the cask
  url "https://github.com/aptana/studio3/releases/download/v#{version}/Aptana_Studio_#{version}_Setup.dmg"
  appcast "https://github.com/aptana/studio#{version.major}/releases.atom",
          checkpoint: 'bc7e44cbfb6450a4af49e41a1ceb499ea9ea90a7f86bd8f58be7dc29a9743daa'
  name 'Aptana Studio'
  homepage 'http://www.aptana.com/'

  app "Aptana Studio #{version.major}/AptanaStudio#{version.major}.app"
end
