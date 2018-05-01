cask 'flutter-sdk' do
  version '0.3.1'
  sha256 'a88356eb37c37e89f92698ed06eaf02d6364c50f6accea6fe793b9d04c9e0c98'

  # storage.googleapis.com/flutter_infra/releases/beta/macos was verified as official when first introduced to the cask
  url "https://storage.googleapis.com/flutter_infra/releases/beta/macos/flutter_macos_v#{version}-beta.zip"
  name 'Flutter SDK'
  homepage 'https://flutter.io/'

  binary 'flutter/bin/flutter'
end
