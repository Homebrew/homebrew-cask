cask :v1 => 'iboostup' do
  version :latest
  sha256 :no_check

  url 'http://www.iboostup.com/iboostup.dmg'
  name 'iBoostUp'
  appcast 'http://www.iboostup.com/updates',
          :sha256 => 'b2ac6238575017acfdb5c589111795207780623065cb8e65e1ee569142986592'
  homepage 'http://www.iboostup.com'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'iBoostUp.app'
end
