cask :v1 => 'mover' do
  version :latest
  sha256 :no_check

  url 'http://www.themaninhat.com/static/mover.dmg'
  homepage 'http://www.themaninhat.com/mover.html'
  license :unknown    # todo: improve this machine-generated value

  app 'Mover.app'
end
