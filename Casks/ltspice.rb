cask :v1 => 'ltspice' do
  version :latest
  sha256 :no_check

  url 'http://ltspice.linear-tech.com/LTspiceIV.dmg'
  homepage 'http://www.linear.com/designtools/software/'
  license :unknown

  app 'LTspice.app'
end
