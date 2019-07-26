cask 'synergy' do
  version '1.10.2,b126:8c010140'
  sha256 'e85ab316c7783c3da8caba94f31210d80bb8c68f740a9d14322c3a20c8d2adf0'

  url "https://binaries.symless.com/synergy/v#{version.before_comma.major}-core-standard/v#{version.before_comma}-stable-#{version.after_colon}/synergy_#{version.before_comma}-stable_#{version.after_comma.before_colon}-#{version.after_colon}_macos.dmg"
  name 'Synergy'
  homepage 'https://symless.com/synergy'

  app 'Synergy.app'
end
