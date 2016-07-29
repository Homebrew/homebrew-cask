cask 'ltspice' do
  version :latest
  sha256 :no_check

  # ltspice.linear-tech.com was verified as official when first introduced to the cask
  url 'http://ltspice.linear-tech.com/LTspiceIV.dmg'
  name 'LTspice'
  homepage 'http://www.linear.com/designtools/software/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'LTspice.app'
end
