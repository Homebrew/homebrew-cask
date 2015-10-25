cask :v1 => 'delayedlauncher' do
  version :latest
  sha256 :no_check

  url 'http://www.taoeffect.com/delayedlauncher/DelayedLauncher.zip'
  appcast 'https://www.taoeffect.com/delayedlauncher/appcast.xml',
          :sha256 => '7890874b09454101e7af04a798fea7a6daea3c18f820b628ce51c12c9d4b2f00'
  name 'DelayedLauncher'
  homepage 'https://www.taoeffect.com/blog/2010/03/delayedlauncher-2-0/'
  license :bsd

  app 'DelayedLauncher.app'
end
