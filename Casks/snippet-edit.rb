cask 'snippet-edit' do
  version '1.2.1'
  sha256 '2a6ee1b3ecd5d5d84743be9d81b36e969f05fe40209d8877008dc6f60d95d37c'

  url "http://cocoaholic.com/downloads/snippet_edit/Snippet_Edit_#{version}.zip"
  appcast 'http://cocoaholic.com/sparkle/snippet_edit/sparkle.xml',
          checkpoint: 'd8bcf3fc1b2c9648af174988789d2034662d047cf3f9a860f4ccf05fca665f59'
  name 'Snippet Edit'
  homepage 'https://cocoaholic.com/snippet_edit/'

  app 'Snippet Edit.app'
end
