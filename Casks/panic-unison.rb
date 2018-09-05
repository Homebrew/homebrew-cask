cask 'panic-unison' do
  version '2.2'
  sha256 'b9d08af6ea52fbcf8fe0eebaec9b7b68c7a280d4455de030d99ca9731cca66d9'

  url "https://download.panic.com/unison/Unison%20#{version}.zip"
  name 'Panic Unison'
  homepage 'https://panic.com/blog/the-future-of-unison/'

  app 'Unison.app'

  caveats do
    discontinued
  end
end
