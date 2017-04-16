cask :v1 => 'hyperspaces' do
  version '1.1.1'
  sha256 '9ea53ac06f0ecc5ed23b4fb6c61f0a9d4eb2d3141ff3a169315ef725a5522253'

  url "http://cocoabots-downloads.s3.amazonaws.com/hyperspaces/public/Hyperspaces%20#{version}.zip?"
  homepage 'http://hyperspacesapp.com/'
  license :unknown    # todo: improve this machine-generated value

  app 'Hyperspaces.app'
  caveats <<-EOS.undent
    Hyperspaces does not run on more recent versions of Mac OS X, and is no longer supported

    See the Hyperspaces homepage for more information.
  EOS
end
