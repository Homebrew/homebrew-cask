cask 'horos' do
  version '2.1.1'
  sha256 '060162d17aa06762b907665dbd809d096b53a56b1c69e779951a3581b8f70743'

  url "https://www.horosproject.org/wp-content/uploads/downloads/Horos#{version}.dmg"
  name 'Horos – Free, open medical image viewer'
  homepage 'https://www.horosproject.org/'

  app 'Horos.app'
end
