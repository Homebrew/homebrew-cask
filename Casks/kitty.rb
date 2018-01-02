cask 'kitty' do
  version '0.6.1'
  sha256 'd2320d162830c1c8a5a06cc3f1fa728040cc8f94b9d131aac351c26ac8d48b83'

  url "https://github.com/kovidgoyal/kitty/releases/download/v#{version}/kitty-#{version}.dmg"
  appcast 'https://github.com/kovidgoyal/kitty/releases.atom',
          checkpoint: 'fc8af83090d4c1300b21d1fd6647deffff0fa225850e1f6f90d22d821d98d7f6'
  name 'kitty'
  homepage 'https://github.com/kovidgoyal/kitty'

  app 'kitty.app'
end
