cask :v1 => 'iboostup' do
  version :latest
  sha256 :no_check

  url 'http://www.iboostup.com/iboostup.dmg'
  homepage 'http://www.iboostup.com'
  license :unknown    # todo: improve this machine-generated value

  app 'iBoostUp.app'
end
