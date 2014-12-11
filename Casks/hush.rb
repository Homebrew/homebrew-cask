cask :v1 => 'hush' do
  version :latest
  sha256 :no_check

  url 'https://coffitivity.com/hush/files/Hush.dmg.zip'
  homepage 'http://coffitivity.com/hush/'
  license :unknown    # todo: improve this machine-generated value

  container :nested => 'Hush.dmg'
  app 'Hush.app'
end
