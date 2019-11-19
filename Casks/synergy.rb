cask 'synergy' do
  version '1.10.3,b139:ca35737a'
  sha256 '1417914cc2402526b51fe3045de12ce0d0861675860fb908db9bda7d94e60320'

  url "https://binaries.symless.com/synergy/v#{version.before_comma.major}-core-standard/v#{version.before_comma}-stable-#{version.after_colon}/synergy_#{version.before_comma}-stable_#{version.after_comma.before_colon}-#{version.after_colon}_macos.dmg"
  name 'Synergy'
  homepage 'https://symless.com/synergy'

  app 'Synergy.app'
end
