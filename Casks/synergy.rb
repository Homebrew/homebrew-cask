cask 'synergy' do
  version '2.0.6,b1514-1ef57bb6'
  sha256 '43a38b237407e90cf837e03999a2698c11a398909473d0ba80960371e5f07def'

  url "https://binaries.symless.com/v#{version.before_comma}/Synergy_v#{version.before_comma}-stable_#{version.after_comma}.dmg"
  name 'Synergy'
  homepage 'https://symless.com/synergy'

  app 'Synergy.app'
end
