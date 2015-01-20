cask :v1 => 'ltspice' do
  version :latest
  sha256 :no_check

  # tech.com is the official download host per the vendor homepage
  url 'http://ltspice.linear-tech.com/LTspiceIV.dmg'
  homepage 'http://www.linear.com/designtools/software/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'LTspice.app'
end
