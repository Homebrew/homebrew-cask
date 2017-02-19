cask 'caret' do
  version '1.14.2'
  sha256 '019778f6bcd0ec4121e290576a931b0e97e0e7d004fdd3b770eb6859bc0e7c73'

  # github.com/careteditor/caret was verified as official when first introduced to the cask
  url "https://github.com/careteditor/caret/releases/download/#{version}/Caret.dmg"
  appcast 'https://github.com/careteditor/caret/releases.atom',
          checkpoint: '278457f23557e4258b64f9a4decb33e8614afaeffcbe627b897050d296de51d3'
  name 'Caret'
  homepage 'https://caret.io/'

  app 'Caret.app'
end
