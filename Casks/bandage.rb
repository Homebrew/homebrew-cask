cask :v1 => 'bandage' do
  version '0.7.0'
  sha256 '0da51065f7ac38cd3bdad354d8cda427ba4e7e17a5658407d4a8729b7464935d'

  url "https://github.com/rrwick/Bandage/releases/download/v#{version}/Bandage_Mac_v#{version}.zip"
  appcast 'https://github.com/rrwick/Bandage/releases.atom'
  name 'Bandage'
  homepage 'https://rrwick.github.io/Bandage/'
  license :gpl

  app 'Bandage.app'
end
