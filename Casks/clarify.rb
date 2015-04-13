cask :v1 => 'clarify' do
  version :latest
  sha256 :no_check

  url 'http://www.clarify-it.com/download/mac/Clarify.dmg'
  name 'Clarify'
  homepage 'http://www.clarify-it.com/'
  license :commercial

  app 'Clarify.app'
end
