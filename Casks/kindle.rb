cask :v1 => 'kindle' do
  version '40665'
  sha256 '392bfd701677e8d8287c41ff79cfb7b67c183797fa605e1fe1c34831e6867176'

  url "http://kindleformac.amazon.com/#{version}/KindleForMac.dmg"
  name 'Kindle for Mac'
  homepage 'https://www.amazon.com/gp/digital/fiona/kcp-landing-page'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Kindle.App'
end
