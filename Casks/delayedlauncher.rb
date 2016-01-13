cask 'delayedlauncher' do
  version :latest
  sha256 :no_check

  url 'https://www.taoeffect.com/delayedlauncher/DelayedLauncher.zip'
  appcast 'https://www.taoeffect.com/delayedlauncher/appcast.xml',
          :checkpoint => 'eac79b7a9a9a11236d6813c182f8468821349b6562d31bbdbd6003d4807e2a9d'
  name 'DelayedLauncher'
  homepage 'https://www.taoeffect.com/blog/2010/03/delayedlauncher-2-0/'
  license :bsd

  app 'DelayedLauncher.app'
end
