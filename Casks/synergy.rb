cask 'synergy' do
  version '1.11.0,b193:b2173efb'
  sha256 '6f8de72793e69e6d55f32c2edd0e4f76031bf1f776b4c58789edd4ce94a72d8d'

  url "https://binaries.symless.com/synergy/v#{version.before_comma.major}-core-standard/v#{version.before_comma}-stable-#{version.after_colon}/synergy_v#{version.before_comma}-stable_#{version.after_comma.before_colon}-#{version.after_colon}_macos.dmg"
  appcast 'https://github.com/symless/synergy-core/releases.atom'
  name 'Synergy'
  homepage 'https://symless.com/synergy'

  app 'Synergy.app'
end
