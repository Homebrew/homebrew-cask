cask 'passenger' do
  version '4.6.1'
  sha256 '2e51501c65c339f7e9f1fa1c74b75fb7d60b4c3a2f0b02a99a28ec4d2b46d592'

  url 'https://macinmind.com/Passenger.dmg'
  appcast 'https://macinmind.com/pads/PassengerAppcast.xml'
  name 'Passenger'
  homepage 'https://macinmind.com/?area=app&app=passenger'

  suite 'Passenger'
end
