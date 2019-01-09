cask 'synergy' do
  version '1.10.1,b87:8941241e'
  sha256 '3e19d18a5ca30f8576d3c0bac861cb23f506044f2fe5872e715b0174076277a4'

  url "https://binaries.symless.com/synergy/v#{version.before_comma.major}-core-standard/v#{version.before_comma}-stable-#{version.after_colon}/synergy_#{version.before_comma}-stable_#{version.after_comma.before_colon}-#{version.after_colon}_macos.dmg"
  name 'Synergy'
  homepage 'https://symless.com/synergy'

  app 'Synergy.app'
end
