cask 'dosbox' do
  version '0.74'
  sha256 '99057370b478608a6f0167ef522ef59e0e1b876f8565622d3dbd707925d61f6c'

  # sourceforge.net/dosbox was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/dosbox/dosbox/#{version}/DOSBox-#{version}-1_Universal.dmg"
  appcast 'https://sourceforge.net/projects/dosbox/rss?path=/dosbox',
          checkpoint: '929b955f2dc9eee4862c52b43d2d188232028bc8878f89ad1b7ad8a790dc3ba1'
  name 'DOSBox'
  homepage 'https://www.dosbox.com/'

  app 'DOSBox.app'
end
