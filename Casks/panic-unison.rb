cask :v1 => 'panic-unison' do
  version '2.2'
  sha256 'b9d08af6ea52fbcf8fe0eebaec9b7b68c7a280d4455de030d99ca9731cca66d9'

  url "http://download.panic.com/Unison/Unison%20#{version}.zip"
  appcast 'http://www.panic.com/updates/update.php'
  homepage 'http://panic.com/unison/'
  license :unknown    # todo: improve this machine-generated value

  app 'Unison.app'
end
