cask 'difffork' do
  version '1.1.9.2'
  sha256 'e366234c71a797a7f2fe794195bc8096157f2a77f883b24e8f6cf78438fc433a'

  # dotfork.s3.amazonaws.com was verified as official when first introduced to the cask
  url 'https://dotfork.s3.amazonaws.com/DiffFork.app.zip'
  appcast 'http://www.dotfork.com/difffork/appcast.xml',
          checkpoint: '581004094831c826a4c60a2a204245712773cfd6d34a6e2847853f84e4ac6a75'
  name 'DiffFork'
  homepage 'http://www.dotfork.com/difffork/'

  app 'DiffFork.app'
end
