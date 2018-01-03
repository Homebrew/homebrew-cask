cask 'passenger' do
  version '4.6'
  sha256 'd940757e97e89f173aeb8c874a82d62228c9f8b7e4c23fce14d3321135e9ff98'

  url 'https://macinmind.com/Passenger.dmg'
  appcast 'https://macinmind.com/pads/PassengerAppcast.xml',
          checkpoint: '625e438d2cbe45ee5a80ebb23d7d84324682ff2cd10aeabcfa5dc7317f6d433f'
  name 'Passenger'
  homepage 'https://macinmind.com/?area=app&app=passenger'

  suite 'Passenger'
end
