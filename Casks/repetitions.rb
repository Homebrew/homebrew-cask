cask :v1 => 'repetitions' do
  version '1.81'
  sha256 '88fd58ae3f1cabfb8b642eb4a56cd6eb7f73571f869accaa504b2c4ef4f53865'

  # secureserver.net is the official download host per the vendor homepage
  url "http://p3nlhg472c1472.shr.prod.phx3.secureserver.net/~repetitionsapp/Repetitions-#{version}-Mac_OS_X-x86_64.dmg"
  name 'Repetitions'
  homepage 'https://www.repetitionsapp.com'
  license :closed

  app 'Repetitions.app'
end
