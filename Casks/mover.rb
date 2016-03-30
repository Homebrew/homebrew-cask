cask 'mover' do
  version :latest
  sha256 :no_check

  url 'http://www.themaninhat.com/static/mover.dmg'
  name 'Mover'
  homepage 'http://www.themaninhat.com/mover.html'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Mover.app'
end
