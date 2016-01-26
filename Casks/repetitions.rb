cask 'repetitions' do
  version '1.821'
  sha256 '8158cd39d8ba285ed8224bb42629cf2cf015c2f9239460b80343b01007180cf4'

  # secureserver.net is the official download host per the vendor homepage
  url "http://p3nlhg472c1472.shr.prod.phx3.secureserver.net/~repetitionsapp/Repetitions-#{version}-Mac_OS_X-x86_64.dmg"
  name 'Repetitions'
  homepage 'https://www.repetitionsapp.com'
  license :closed

  app 'Repetitions.app'
end
