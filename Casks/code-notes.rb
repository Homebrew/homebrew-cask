cask 'code-notes' do
  version '1.2.3'
  sha256 '54294a1ac2854cadac4d62e2bd52ea8e7dcdccba5917c314215abc816e9d661a'

  # github.com/lauthieb/code-notes was verified as official when first introduced to the cask
  url "https://github.com/lauthieb/code-notes/releases/download/#{version}/code-notes-#{version}.dmg"
  appcast 'https://github.com/lauthieb/code-notes/releases.atom'
  name 'Code Notes'
  homepage 'https://lauthieb.github.io/code-notes/'

  app 'Code Notes.app'
end
