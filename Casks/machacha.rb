cask :v1 => 'machacha' do
  version :latest
  sha256 :no_check

  url 'http://www.julifos.com/soft/machacha/machacha.dmg'
  homepage 'http://www.julifos.com/soft/machacha/index.html'
  license :unknown    # todo: improve this machine-generated value

  app 'MacHacha.app'
end
