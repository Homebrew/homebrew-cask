cask 'qownnotes' do
  version '17.06.5,b3059-172943'
  sha256 'e7be6c1c4d6b226bee226342567b8a8902bba82639a589dee7cfddb84bf246d5'

  # github.com/pbek/QOwnNotes was verified as official when first introduced to the cask
  url "https://github.com/pbek/QOwnNotes/releases/download/macosx-#{version.after_comma}/QOwnNotes-#{version.before_comma}.dmg"
  appcast 'https://github.com/pbek/QOwnNotes/releases.atom',
          checkpoint: 'ae9915c9936e17ff52eb710d78f228cbf8bc5b3a3cf652016d86271f225023d6'
  name 'QOwnNotes'
  homepage 'https://www.qownnotes.org/'

  app 'QOwnNotes.app'
end
