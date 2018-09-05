cask 'synergy' do
  version '1.10.0,b39:275cdc1c'
  sha256 'dd4028c6166480ab544a2bcd781d158dd1c373cf28a0867cc5987ef9d091f3ca'

  url "https://binaries.symless.com/synergy/v#{version.before_comma.major}-core-standard/v#{version.before_comma}-stable-#{version.after_colon}/synergy_#{version.before_comma}-stable_#{version.after_comma.before_colon}-#{version.after_colon}_macos.dmg"
  name 'Synergy'
  homepage 'https://symless.com/synergy'

  app 'Synergy.app'
end
