cask 'delayedlauncher' do
  version :latest
  sha256 :no_check

  url 'https://www.taoeffect.com/delayedlauncher/DelayedLauncher.zip'
  appcast 'https://www.taoeffect.com/delayedlauncher/appcast.xml',
          :checkpoint => 'a8d8ca4e2e5aad56bdd75ae853f7fdd57fbbdb0850a200d9f35542ad8738b493'
  name 'DelayedLauncher'
  homepage 'https://www.taoeffect.com/blog/2010/03/delayedlauncher-2-0/'
  license :bsd

  app 'DelayedLauncher.app'
end
