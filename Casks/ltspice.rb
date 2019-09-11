cask 'ltspice' do
  version :latest
  sha256 :no_check

  url 'http://ltspice.analog.com/software/LTspice.dmg'
  name 'LTspice'
  homepage 'https://www.analog.com/en/design-center/design-tools-and-calculators/ltspice-simulator.html'

  app 'LTspice.app'

  zap trash: [
               '~/Documents/LTspice/examples',
               '~/Library/Application Support/LTspice',
             ],
      rmdir: '~/Documents/LTspice'
end
