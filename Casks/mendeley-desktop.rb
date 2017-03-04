cask 'mendeley-desktop' do
  version '1.17.8'
  sha256 '6e5c7a648324e389f5cdac52d3ea2255a568054c8bffdeb749c9388719e00687'

  url "http://desktop-download.mendeley.com/download/Mendeley-Desktop-#{version}-OSX-Universal.dmg"
  name 'Mendeley'
  homepage 'https://www.mendeley.com/'

  app 'Mendeley Desktop.app'
end
