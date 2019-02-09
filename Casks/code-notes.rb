cask 'code-notes' do
  version '1.2.1'
  sha256 '4c3435b887d124b127ab49a46b6f6047801fe15642474cd71bde53121c187209'

  # github.com was verified as official when first introduced to the cask
  url 'https://github.com/lauthieb/code-notes/releases/download/1.2.1/code-notes-1.2.1.dmg'
  appcast 'https://github.com/lauthieb/code-notes/releases.atom'
  name 'Code Notes'
  homepage 'https://lauthieb.github.io/code-notes/'

  app 'Code Notes.app'
end
