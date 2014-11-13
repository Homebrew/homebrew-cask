cask :v1 => 'keycastr' do
  version '0.8.0'
  sha256 'ecf59a2e46a8ca450c12f426a4d41000de1c3010a5c46fe12f23fdc647f3f1e7'

  url "https://github.com/downloads/RichardBronosky/keycastr/keycastr_#{version}.dmg"
  homepage 'https://github.com/sdeken/keycastr'
  license :oss

  app 'KeyCastr.app'

  caveats <<-EOS.undent
    For OSX 10.9 or later, #{title} requires that you "Enable access for assistive devices".
    See https://github.com/sdeken/keycastr/issues/5
  EOS
end
