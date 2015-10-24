cask :v1 => 'opacity' do
  version :latest
  sha256 :no_check

  url 'http://downloads.likethought.com/opacity.zip'
  name 'Opacity'
  appcast 'http://downloads.likethought.com/appcasts/opacity.php',
          :sha256 => '031a196c3a9fb04b1eb31d791b154bed797a043621b8350d85eca73c113c2fe0'
  homepage 'http://likethought.com/opacity/'
  license :commercial

  app 'Opacity.app'
end
