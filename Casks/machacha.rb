cask 'machacha' do
  version :latest
  sha256 :no_check

  url 'http://www.julifos.com/soft/machacha/machacha.dmg'
  name 'MacHacha'
  homepage 'http://www.julifos.com/soft/machacha/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'MacHacha.app'
end
