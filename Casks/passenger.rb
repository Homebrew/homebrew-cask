cask 'passenger' do
  version '4.6'
  sha256 'c2905c8d3de7fe04fad0e18a243f093b8b50d910a61d2d0f1860c4a1f47d6e8c'

  url 'http://macinmind.com/Passenger.dmg'
  appcast 'https://macinmind.com/pads/PassengerAppcast.xml',
          checkpoint: '625e438d2cbe45ee5a80ebb23d7d84324682ff2cd10aeabcfa5dc7317f6d433f'
  name 'Passenger'
  homepage 'http://macinmind.com/?area=app&app=passenger'

  suite 'Passenger'
end
