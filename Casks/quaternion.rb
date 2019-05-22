cask 'quaternion' do
  version '0.0.9.4b'
  sha256 'f070c28a0b248b5dff5540de93d47bed75cab8a41d9936eb043d9a28b9634ea2'

  url "https://github.com/quotient-im/Quaternion/releases/download/#{version}/quaternion-#{version}.dmg"
  appcast 'https://github.com/quotient-im/Quaternion/releases.atom'
  name 'Quaternion'
  homepage 'https://github.com/quotient-im/Quaternion'

  depends_on macos: '>= :high_sierra'

  app 'quaternion.app'
end
