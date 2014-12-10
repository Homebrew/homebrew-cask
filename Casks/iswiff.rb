cask :v1 => 'iswiff' do
  version :latest
  sha256 :no_check

  url 'http://echoone.com/iswiff/iSwiff.dmg'
  homepage 'http://echoone.com/iswiff/'
  license :unknown    # todo: improve this machine-generated value

  app 'iSwiff.app'
end
