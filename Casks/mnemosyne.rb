cask 'mnemosyne' do
  version '2.3.6'
  sha256 'bd274dff7084d94339e00fb023c85686f652dc594fb3db88444b19011858695e'

  # sourceforge.net/mnemosyne-proj was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/mnemosyne-proj/mnemosyne/mnemosyne-#{version}/Mnemosyne-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/mnemosyne-proj/rss?path=/mnemosyne',
          checkpoint: '3527121156674535d9eef71499b7363325a1786cfe4071cf1d1f66baefc267be'
  name 'Mnemosyne'
  homepage 'http://mnemosyne-proj.org/'

  app 'Mnemosyne.app'
end
