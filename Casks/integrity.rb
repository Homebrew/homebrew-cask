cask :v1 => 'integrity' do
  version :latest
  sha256 :no_check

  url 'http://peacockmedia.co.uk/integrity/integrity.dmg'
  name 'Integrity'
  homepage 'http://peacockmedia.co.uk/integrity/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Integrity.app'
end
