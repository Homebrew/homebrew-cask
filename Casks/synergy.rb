cask 'synergy' do
  version '1.7.6'
  sha256 '838c14f253bed25ac6cf4b1887bb0cdae530ea969fbe53112aa4dd480e93887a'

  url 'http://symless.com/files/packages/synergy-v1.7.6-stable-bcb9da8-MacOSX1011-x86_64.dmg?v32'
  name 'Synergy'
  homepage 'http://symless.com/'
  license :commercial

  app 'Synergy.app'
  uninstall delete: '/Applications/Synergy.app'
end
