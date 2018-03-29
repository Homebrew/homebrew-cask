cask 'synergy' do
  version '2.0.8,b1659-a99bf78e'
  sha256 '7e600945b3f4281569323da6ddc3eeafc0907b6eb1b557de8c4a5d94f1776cf7'

  url "https://binaries.symless.com/v#{version.before_comma}/Synergy_v#{version.before_comma}-stable_#{version.after_comma}.dmg"
  name 'Synergy'
  homepage 'https://symless.com/synergy'

  app 'Synergy.app'
end
