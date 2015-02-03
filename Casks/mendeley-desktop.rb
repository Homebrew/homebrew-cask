cask :v1 => 'mendeley-desktop' do
  version '1.13.3'
  sha256 'b1fe1c4c798e20aafa2834c5d0b5e8757a19cd09c3fc25a80c9febf4a3997d54'

  url "http://desktop-download.mendeley.com/download/Mendeley-Desktop-#{version}-OSX-Universal.dmg"
  name 'Mendeley'
  homepage 'http://www.mendeley.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Mendeley Desktop.app'
end
