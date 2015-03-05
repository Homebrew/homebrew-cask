cask :v1 => 'iboostup' do
  version :latest
  sha256 :no_check

  url 'http://www.iboostup.com/iboostup.dmg'
  homepage 'http://www.iboostup.com'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'iBoostUp.app'
end
