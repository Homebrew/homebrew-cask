cask :v1 => 'mendeley-desktop' do
  version '1.13.5'
  sha256 '99cc040095b198c984f8193eb7b5da4c39bbf77ac1b715161b4036ca7d55db35'

  url "http://desktop-download.mendeley.com/download/Mendeley-Desktop-#{version}-OSX-Universal.dmg"
  name 'Mendeley'
  homepage 'http://www.mendeley.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Mendeley Desktop.app'
end
