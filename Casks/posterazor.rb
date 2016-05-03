cask 'posterazor' do
  version '1.5'
  sha256 'dbecf2dc00fe2bf106df2e9fd9bc66014015989771db6c369a86d755f516df49'

  url 'http://downloads.sourceforge.net/sourceforge/posterazor/PosteRazor-1.5-OSX.dmg'
  name 'PosteRazor'
  homepage 'http://posterazor.sourceforge.net'
  license :gpl

  app 'PosteRazor.app'
end
