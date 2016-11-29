cask 'synergy' do
  version '1.8.5,a18eba7'
  sha256 'b8023219e477603a6b07888ddf9388211ddd8bc9753b46ffd425feebddd917a5'

  url "https://symless.com/files/packages/synergy-v#{version.before_comma}-stable-#{version.after_comma}-MacOSX1011-x86_64.dmg"
  name 'Synergy'
  homepage 'https://symless.com/synergy/'

  app 'Synergy.app'
end
