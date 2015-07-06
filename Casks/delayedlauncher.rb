cask :v1 => 'delayedlauncher' do
  version :latest
  sha256 :no_check

  url 'http://www.taoeffect.com/delayedlauncher/DelayedLauncher.zip'
  name 'DelayedLauncher'
  homepage 'https://www.taoeffect.com/blog/2010/03/delayedlauncher-2-0/'
  license :bsd

  app 'DelayedLauncher.app'
end
