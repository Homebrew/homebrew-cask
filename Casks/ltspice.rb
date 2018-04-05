cask 'ltspice' do
  version :latest
  sha256 :no_check

  url 'http://ltspice.analog.com/software/LTspiceIV.dmg'
  name 'LTspice'
  homepage 'http://www.analog.com/en/design-center/design-tools-and-calculators/ltspice-simulator.html'

  app 'LTspice.app'
end
