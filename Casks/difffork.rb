cask 'difffork' do
  version '1.1.9.2'
  sha256 'e366234c71a797a7f2fe794195bc8096157f2a77f883b24e8f6cf78438fc433a'

  # amazonaws.com is the official download host per the vendor homepage
  url 'https://dotfork.s3.amazonaws.com/DiffFork.app.zip'
  appcast 'http://www.dotfork.com/difffork/appcast.xml',
          :sha256 => '8dd9ffc61d51c55d9f44e6bc203a8fec2a19e489a474fd7229644b038428e1e4'
  name 'DiffFork'
  homepage 'http://www.dotfork.com/difffork/'
  license :commercial

  app 'DiffFork.app'
end
