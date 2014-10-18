class SnippetEdit < Cask
  version '20140422' 
  sha256 '2a6ee1b3ecd5d5d84743be9d81b36e969f05fe40209d8877008dc6f60d95d37c' 

  url 'http://cocoaholic.com/downloads/snippet_edit/Snippet_Edit_1.2.1.zip' 
  appcast 'http://cocoaholic.com/sparkle/snippet_edit/sparkle.xml',
          :sha256 => 'a32af024b5e43f5bd6fef837808d8130359000c2f7f975f38abc46aecf17e113'
  homepage 'http://cocoaholic.com/snippet_edit/'
  license :unknown

  app 'Snippet Edit.app'
end
