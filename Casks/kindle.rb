cask :v1 => 'kindle' do
  version '40648'
  sha256 'c9549380f777b7c6e2e7c3c1d0c81442c242733ca4879faf543219a125d35773'

  url "http://kindleformac.amazon.com/#{version}/KindleForMac.dmg"
  name 'Kindle for Mac'
  homepage 'https://www.amazon.com/gp/digital/fiona/kcp-landing-page'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Kindle.App'
end
