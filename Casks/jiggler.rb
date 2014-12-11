cask :v1 => 'jiggler' do
  version :latest
  sha256 :no_check

  url 'http://downloads.sticksoftware.com/Jiggler.dmg'
  homepage 'http://www.sticksoftware.com/software/Jiggler.html'
  license :unknown    # todo: improve this machine-generated value

  app 'Jiggler.app'
end
