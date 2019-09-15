cask 'synergy' do
  version '1.10.3,b139:ca35737a'
  sha256 '10824301d3079abbdcecfb6b2f83dc9371d929331049fd1f405b58d749f22fee'

  url "https://binaries.symless.com/synergy/v#{version.before_comma.major}-core-standard/v#{version.before_comma}-stable-#{version.after_colon}/synergy_#{version.before_comma}-stable_#{version.after_comma.before_colon}-#{version.after_colon}_macos.dmg"
  name 'Synergy'
  homepage 'https://symless.com/synergy'

  app 'Synergy.app'
end
