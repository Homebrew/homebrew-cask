cask 'flutter' do
  version '1.20.1'
  sha256 'a6364d48455bd7eb749bcbd0b7c71b985bccb0149ea0dd95c6bef3bbb2e9f91b'

  # storage.googleapis.com/flutter_infra/releases/stable/macos/ was verified as official when first introduced to the cask
  url "https://storage.googleapis.com/flutter_infra/releases/stable/macos/flutter_macos_#{version}-stable.zip"
  name 'Flutter SDK'
  homepage 'https://flutter.dev/'

  conflicts_with cask: 'dart'
  depends_on macos: '>= :catalina'

  app 'flutter'
  binary 'flutter/bin/flutter'

  uninstall rmdir: [
    "#{appdir}/flutter",
  ]

  caveats <<~EOS
    flutter requires dart binary included in the SDK. GateKeeper will prevent its use unless you whitelist it with the following command :
      xattr -d com.apple.quarantine "#{appdir}/flutter/bin/cache/dart-sdk/bin/dart"
  EOS
end
