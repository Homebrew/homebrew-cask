cask 'opencpn' do
  version '4.4.0'
  sha256 'aedb42ed43a4f5776422410079b946dd87e05a117ba4289733e32c1e6657d6e7'

  # opencpn.navnux.org was verified as official when first introduced to the cask
  url "http://opencpn.navnux.org/#{version}/OpenCPN_#{version}.dmg"
  name 'OpenCPN'
  homepage 'http://opencpn.org'

  app 'OpenCPN.app'
end
