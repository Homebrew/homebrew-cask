cask 'delayedlauncher' do
  version '2.2.1'
  sha256 '959657ad408d3ffea0b4abd44e84dd6c0ed64b2d5b69e7a1d742af3602f56cbe'

  url 'https://www.taoeffect.com/delayedlauncher/DelayedLauncher.zip'
  appcast 'https://www.taoeffect.com/delayedlauncher/appcast.xml',
          checkpoint: 'eac79b7a9a9a11236d6813c182f8468821349b6562d31bbdbd6003d4807e2a9d'
  name 'DelayedLauncher'
  homepage 'https://www.taoeffect.com/blog/2010/03/delayedlauncher-2-0/'
  license :bsd

  app 'DelayedLauncher.app'
end
