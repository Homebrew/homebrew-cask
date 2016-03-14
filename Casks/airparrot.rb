cask 'airparrot' do
  version '2.4.0'
  sha256 'b0259013fa9f2a6f0c0d2458884a7812eb407b02e658cee2128faafe8907d5b6'

  url "https://download.airsquirrels.com/AirParrot2/Mac/AirParrot-#{version}.dmg"
  appcast 'https://updates.airsquirrels.com/AirParrot2/Mac/AirParrot2.xml',
          checkpoint: '89ba917b619eb0ee38572711cc522b4bd9e15aa263ac73a34836f872db30a9d1'
  name 'AirParrot'
  homepage 'http://www.airsquirrels.com/airparrot/'
  license :commercial

  app 'AirParrot 2.app'
end
