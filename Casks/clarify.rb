cask :v1 => 'clarify' do
  version :latest
  sha256 :no_check

  url 'http://www.clarify-it.com/download/mac/Clarify.dmg'
  homepage 'http://www.clarify-it.com/'
  license :unknown    # todo: improve this machine-generated value

  app 'Clarify.app'
end
