cask 'analog-lab' do
  version '1.2.4.126'
  sha256 'e66182ba1887d0c1369299c9c7ba6a06d709083b8aa6c8163108973d99b7e220'

  url "https://downloads.arturia.com/products/analoglab/soft/Analog_Lab_#{version.dots_to_underscores}.pkg"
  name 'Arturia Analog Lab'
  homepage 'http://www.arturia.com/products/analog-classics/analoglab/overview'
  license :commercial

  pkg "Analog_Lab_#{version.dots_to_underscores}.pkg"
end
