cask 'pd' do
  version '0.48-0'
  sha256 'a58b039b928e082df36b12c711c5373fe2e64a8015403166c15ef72696d6179a'

  url "http://msp.ucsd.edu/Software/pd-#{version}.mac.tar.gz"
  appcast 'http://msp.ucsd.edu/software.html',
          checkpoint: 'a527e66ce475915b9ecc2b37b777daecb5288b040dc5c2a13d7004ec138cb375'
  name 'Pd'
  homepage 'http://msp.ucsd.edu/software.html'

  app "Pd-#{version}.app"

  postflight do
    set_permissions "#{appdir}/Pd-#{version}.app", 'u+w'
  end
end
