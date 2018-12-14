cask 'passenger' do
  version '4.6.1'
  sha256 '2b385566b8d525169591b0f750e82767266d19aae5cfe86a7fbd122b73770547'

  url 'https://macinmind.com/Passenger.dmg'
  appcast 'https://macinmind.com/pads/PassengerAppcast.xml'
  name 'Passenger'
  homepage 'https://macinmind.com/?area=app&app=passenger'

  suite 'Passenger'
end
