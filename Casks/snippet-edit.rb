class SnippetEdit < Cask
  version '1.1'
  sha256 '90cc8cca7ddbf1e17cc4dc8838a99c5ec2c0dcea3758e09c0ff2b6fa472eeb82'

  url "http://cocoaholic.com/downloads/snippet_edit/Snippet_Edit_#{version}.zip"
  appcast 'http://cocoaholic.com/sparkle/snippet_edit/sparkle.xml',
          :sha256 => 'a32af024b5e43f5bd6fef837808d8130359000c2f7f975f38abc46aecf17e113'
  homepage 'http://cocoaholic.com/snippet_edit/'
  license :unknown

  app 'Snippet Edit.app'
end
