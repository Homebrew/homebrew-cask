cask :v1_1 => 'panic-unison' do
  version '2.2'
  sha256 'b9d08af6ea52fbcf8fe0eebaec9b7b68c7a280d4455de030d99ca9731cca66d9'

  url "http://download.panic.com/Unison/Unison%20#{version}.zip"
  appcast 'http://www.panic.com/updates/update.php'
  name 'Unison'
  homepage 'https://panic.com/unison/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder
  tags :vendor => 'Panic'

  app 'Unison.app'

  caveats do
    discontinued
  end
end
