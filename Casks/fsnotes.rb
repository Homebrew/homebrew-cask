cask 'fsnotes' do
  version '2.0.4'
  sha256 '9a30527129f2bf4de5b189730e6eb093d8cf4a7c322b1a711217a4d53283e91a'

  # github.com/glushchenko/fsnotes was verified as official when first introduced to the cask
  url "https://github.com/glushchenko/fsnotes/releases/download/#{version.before_comma}/FSNotes_#{version.before_comma}#{version.after_comma}.zip"
  appcast 'https://github.com/glushchenko/fsnotes/releases.atom'
  name 'FSNotes'
  homepage 'https://fsnot.es/'

  app 'FSNotes.app'
end
