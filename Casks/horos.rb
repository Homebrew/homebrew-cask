cask 'horos' do
  version '1.1.6'
  sha256 '140e7c8fc10a7732a24ef53f885b8929aac2e7e7ac5db71c78ce3b4605c13ed0'

  # dev-horos-project.pantheon.io was verified as official when first introduced to the cask
  url "http://dev-horos-project.pantheon.io/wp-content/uploads/downloads/Horos#{version}.dmg"
  name 'Horos – Free, open medical image viewer'
  homepage 'http://www.horosproject.org'
  license :gpl

  app 'Horos.app'
end
