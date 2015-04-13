cask :v1 => 'mendeley-desktop' do
  version '1.13.6'
  sha256 '77eef115c488662494b2fcdcbbddcdde63bfe7d81800e5445a02228a0630160e'

  url "http://desktop-download.mendeley.com/download/Mendeley-Desktop-#{version}-OSX-Universal.dmg"
  name 'Mendeley'
  homepage 'http://www.mendeley.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Mendeley Desktop.app'
end
