cask 'difffork' do
  version '1.1.9.2'
  sha256 'e366234c71a797a7f2fe794195bc8096157f2a77f883b24e8f6cf78438fc433a'

  # dotfork.s3.amazonaws.com was verified as official when first introduced to the cask
  url 'https://dotfork.s3.amazonaws.com/DiffFork.app.zip'
  appcast 'http://www.dotfork.com/difffork/appcast.xml',
          checkpoint: 'e2169213947077fcec5f5a3cb756854df8ba53292f45aa7f06637d041372d79c'
  name 'DiffFork'
  homepage 'http://www.dotfork.com/difffork/'
  license :commercial

  app 'DiffFork.app'
end
