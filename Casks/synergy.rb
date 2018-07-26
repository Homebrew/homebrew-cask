cask 'synergy' do
  version '1.10.0,b39:275cdc1c'
  sha256 'b09d8ffdb47ecde761e06e9beea672ad4b6999e09104fa9239ae30ae0f69b9c2'

  url "https://binaries.symless.com/synergy/v#{version.before_comma.major}-core-standard/v#{version.before_comma}-stable-#{version.after_colon}/synergy_#{version.before_comma}-stable_#{version.after_comma.before_colon}-#{version.after_colon}_macos.dmg"
  name 'Synergy'
  homepage 'https://symless.com/synergy'

  app 'Synergy.app'
end
