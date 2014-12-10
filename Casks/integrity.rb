cask :v1 => 'integrity' do
  version :latest
  sha256 :no_check

  url 'http://peacockmedia.co.uk/integrity/integrity.dmg'
  homepage 'http://peacockmedia.co.uk/integrity/'
  license :unknown    # todo: improve this machine-generated value

  app 'Integrity.app'
end
