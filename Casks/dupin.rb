cask :v1 => 'dupin' do
  if MacOS.release <= :lion
    version '2.7.4'
    sha256 '4aba53f356606614627d57f6a33c1ee9cf13ddf06c13e7ac8487b930cb647b85'
  else
    version '2.8.10'
    sha256 '22e0ef142f5fbad52af5d768bb257d46fbde355b64759827eea98bc35d89b864'
  end

  url "http://dougscripts.com/itunes/scrx/dupinv#{version.delete('.')}.zip"
  appcast 'http://dougscripts.com/itunes/itinfo/dupin_appcast.xml',
          :sha256 => '78e78fefc4b9830de0c8ecfbe8ea6ce0e80cef9564755025d52364fe73b6823b'
  name 'Dupin'
  homepage 'http://dougscripts.com/apps/dupinapp.php'
  license :commercial

  depends_on :macos => '>= :snow_leopard'

  app 'Dupin.app'
end
