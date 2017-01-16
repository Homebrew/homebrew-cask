cask 'logic' do
  version '1.2.11'
  sha256 '35396fd72d0ed5b46119b512ca0681b3279cc1b2858e075081091ad123391b27'

  url "http://downloads.saleae.com/logic/#{version}/Logic-#{version}-Darwin.dmg"
  name 'Logic'
  homepage 'https://www.saleae.com/'

  depends_on macos: '>= :lion'

  app 'Logic.app'
end
