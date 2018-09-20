cask 'passenger' do
  version '4.6.1'
  sha256 '860af97614dd12a751b132f0cf7d88110462ad88151a96f7e2dfacd6d2c3c8b2'

  url 'https://macinmind.com/Passenger.dmg'
  appcast 'https://macinmind.com/pads/PassengerAppcast.xml'
  name 'Passenger'
  homepage 'https://macinmind.com/?area=app&app=passenger'

  suite 'Passenger'
end
