cask 'logic' do
  version '1.2.13'
  sha256 '338412b91677d34559af0b0d2aca3250d7d0a12965428c736e13187824ea7832'

  url "http://downloads.saleae.com/logic/#{version}/Logic-#{version}-Darwin.dmg"
  name 'Logic'
  homepage 'https://www.saleae.com/'

  depends_on macos: '>= :lion'

  app 'Logic.app'
end
