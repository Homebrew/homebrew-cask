cask 'scratch' do
  version '3.6.0'
  sha256 '41181d5877be753d1d4df14f90fb3fafe3ea704b54741ccea6229c0811aa6891'

  url "https://downloads.scratch.mit.edu/desktop/Scratch%20Desktop-#{version}.dmg"
  name 'Scratch'
  homepage 'https://scratch.mit.edu/download'

  depends_on macos: '>= :high_sierra'

  app 'Scratch Desktop.app'
end
