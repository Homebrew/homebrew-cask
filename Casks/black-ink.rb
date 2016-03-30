cask 'black-ink' do
  version '1.6.4'
  sha256 '47c15fbe6ea2fbd548c1e29d6fe8c84fe9fecbf4597067832acb71b60c236e78'

  url "https://red-sweater.com/blackink/BlackInk#{version}.zip"
  appcast 'https://red-sweater.com/blackink/appcast1.php',
          checkpoint: '624f73d7fe9e633c5c716c76f9b018ae850f1e2b00918a2427aeda0f948d769b'
  name 'Black Ink'
  homepage 'https://red-sweater.com/blackink/'
  license :commercial

  app 'Black Ink.app'
end
