cask 'logic' do
  version '1.2.10'
  sha256 '02042d0527069581b4f4cf6d5dbd7d16312ae2219d2787d53ad677ddd6fa26b4'

  url "http://downloads.saleae.com/logic/#{version}/Logic-#{version}-Darwin.dmg"
  name 'Logic'
  homepage 'https://www.saleae.com/'

  app 'Logic.app'
end
