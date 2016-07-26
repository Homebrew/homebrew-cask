cask 'black-ink' do
  version '1.6.4'
  sha256 '47c15fbe6ea2fbd548c1e29d6fe8c84fe9fecbf4597067832acb71b60c236e78'

  url "https://red-sweater.com/blackink/BlackInk#{version}.zip"
  appcast 'https://red-sweater.com/blackink/appcast1.php',
          checkpoint: '58b59ee30e736fb9a698fd2c79e649b87d92c2bc26441e451071f9daf5fac056'
  name 'Black Ink'
  homepage 'https://red-sweater.com/blackink/'
  license :commercial

  app 'Black Ink.app'
end
