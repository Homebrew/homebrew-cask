cask 'synergy' do
  version '1.7.6,bcb9da8'
  sha256 '838c14f253bed25ac6cf4b1887bb0cdae530ea969fbe53112aa4dd480e93887a'

  url "http://symless.com/files/packages/synergy-v#{version.before_comma}-stable-#{version.after_comma}-MacOSX1011-x86_64.dmg"
  name 'Synergy'
  homepage 'http://symless.com/synergy/'
  license :commercial

  app 'Synergy.app'
end
