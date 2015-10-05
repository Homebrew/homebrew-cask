cask :v1 => 'bandage' do
  version '0.6.4'
  sha256 '29407d60fbe847184bc55eeb66d1a5437e8d65559bc1c39bea7cf38b8e6c8584'

  url "https://github.com/rrwick/Bandage/releases/download/v#{version}/Bandage_Mac_v#{version}.zip"
  appcast 'https://github.com/rrwick/Bandage/releases.atom'
  name 'Bandage'
  homepage 'https://rrwick.github.io/Bandage/'
  license :gpl

  app 'Bandage.app'
end
