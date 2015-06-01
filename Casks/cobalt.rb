cask :v1 => 'cobalt' do
  version :latest
  sha256 :no_check

  url 'http://assets.playcobalt.com/Cobalt.dmg'
  name 'Cobalt'
  homepage 'http://playcobalt.com/'
  license :closed    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Cobalt.app'
end
