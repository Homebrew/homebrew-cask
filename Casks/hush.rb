cask :v1 => 'hush' do
  version :latest
  sha256 :no_check

  url 'https://coffitivity.com/hush/files/Hush.dmg.zip'
  homepage 'http://coffitivity.com/hush/'
  license :unknown

  container :nested => 'Hush.dmg'
  app 'Hush.app'
end
