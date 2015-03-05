cask :v1 => 'difffork' do
  version '1.1.9.2'
  sha256 'e366234c71a797a7f2fe794195bc8096157f2a77f883b24e8f6cf78438fc433a'

  # amazonaws.com is the official download host per the vendor homepage
  url 'http://dotfork.s3.amazonaws.com/DiffFork.app.zip'
  homepage 'http://www.dotfork.com/difffork/'
  license :unknown # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'DiffFork.app'
end
