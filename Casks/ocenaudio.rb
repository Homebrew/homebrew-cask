cask :v1 => 'ocenaudio' do
  version :latest
  sha256 :no_check

  url 'http://www.ocenaudio.com.br/downloads/ocenaudio.dmg'
  name 'ocenaudio'
  homepage 'http://www.ocenaudio.com.br/en'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'ocenaudio.app'
end
