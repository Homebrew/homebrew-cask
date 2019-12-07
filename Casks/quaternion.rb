cask 'quaternion' do
  version '0.0.9.4c'
  sha256 'e37ea8c82108346df903df3a7390d327c665ad10b6fb1eaaba418358fb2c09f9'

  url "https://github.com/quotient-im/Quaternion/releases/download/#{version}/quaternion-#{version}.dmg"
  appcast 'https://github.com/quotient-im/Quaternion/releases.atom'
  name 'Quaternion'
  homepage 'https://github.com/quotient-im/Quaternion'

  depends_on macos: '>= :high_sierra'

  app 'quaternion.app'
end
