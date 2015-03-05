cask :v1 => 'iswiff' do
  version :latest
  sha256 :no_check

  url 'http://echoone.com/iswiff/iSwiff.dmg'
  homepage 'http://echoone.com/iswiff/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'iSwiff.app'
end
