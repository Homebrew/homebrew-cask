cask :v1 => 'dupin' do
  version '2.8.2'
  sha256 '282116dbbfd75f73efe4655f21f42dd76720e71a8babea54f57a07e600396264'

  url "http://dougscripts.com/itunes/scrx/dupinv#{version.to_i}mv.zip"
  homepage 'http://dougscripts.com/apps/dupinapp.php'
  license :commercial

  app 'Dupin.app'
end
