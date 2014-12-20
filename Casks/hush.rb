cask :v1 => 'hush' do
  version :latest
  sha256 :no_check

  url 'https://coffitivity.com/hush/files/Hush.dmg.zip'
  homepage 'http://coffitivity.com/hush/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  container :nested => 'Hush.dmg'
  app 'Hush.app'
end
