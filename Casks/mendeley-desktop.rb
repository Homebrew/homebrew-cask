cask :v1 => 'mendeley-desktop' do
  version '1.12.2'
  sha256 'b16cc04ae0d06bf95724a4aa063c7c09d26762058be86b905ac23bb99cb128c3'

  url "http://desktop-download.mendeley.com/download/Mendeley-Desktop-#{version}-OSX-Universal.dmg"
  homepage 'http://www.mendeley.com/'
  license :unknown

  app 'Mendeley Desktop.app'
end
