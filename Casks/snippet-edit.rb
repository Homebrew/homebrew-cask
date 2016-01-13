cask 'snippet-edit' do
  version '1.2.1'
  sha256 '2a6ee1b3ecd5d5d84743be9d81b36e969f05fe40209d8877008dc6f60d95d37c'

  url "http://cocoaholic.com/downloads/snippet_edit/Snippet_Edit_#{version}.zip"
  appcast 'http://cocoaholic.com/sparkle/snippet_edit/sparkle.xml',
          :checkpoint => '8c0c6598cb4cfe00b28449c7b28a717f46b0cb2072a5e39cce090352e87b60a4'
  name 'Snippet Edit'
  homepage 'http://cocoaholic.com/snippet_edit/'
  license :gratis

  app 'Snippet Edit.app'
end
