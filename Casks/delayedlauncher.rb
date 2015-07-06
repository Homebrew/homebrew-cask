cask :v1 => 'delayedlauncher' do
  version '2.2'
  sha256 '959657ad408d3ffea0b4abd44e84dd6c0ed64b2d5b69e7a1d742af3602f56cbe'

  url 'http://www.taoeffect.com/delayedlauncher/DelayedLauncher.zip'
  name 'DelayedLauncher'
  homepage 'https://www.taoeffect.com/blog/2010/03/delayedlauncher-2-0/'
  license :bsd

  app 'DelayedLauncher.app'
end
