cask :v1 => 'difffork' do
  version '1.1.9.2'
  sha256 'e366234c71a797a7f2fe794195bc8096157f2a77f883b24e8f6cf78438fc433a'

  # amazonaws.com is the official download host per the vendor homepage
  url 'https://dotfork.s3.amazonaws.com/DiffFork.app.zip'
  name 'DiffFork'
  appcast 'http://www.dotfork.com/difffork/appcast.xml',
          :sha256 => 'e415fa377e3ea812e61e0d8a4695a42eafa96e9610f8f56d257a340f099d547e'
  homepage 'http://www.dotfork.com/difffork/'
  license :commercial

  app 'DiffFork.app'
end
