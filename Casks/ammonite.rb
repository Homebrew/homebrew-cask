cask 'ammonite' do
  version '1.15.1'
  sha256 '7eebf9a07b1a2d996f8f959317872ff4f4919da7563d3b48f9d6a62cba1c56c8'

  url "http://www.soma-zone.com/download/files/Ammonite_#{version}.tbz"
  appcast 'http://www.soma-zone.com/Ammonite/a/appcast.xml',
          checkpoint: 'a663aba8de2e954e18c6d8bdce4a6b65b639790fe47b11ed84cdbbf26e17a069'
  name 'Ammonite'
  homepage 'http://www.soma-zone.com/Ammonite/'

  app 'Ammonite.app'
end
