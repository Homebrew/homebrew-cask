cask 'flutter' do
  version '1.9.1+hotfix.6-stable'
  sha256 '8d0b3e217e45fbde64e117c5932ec5bd18ced0e8e8fba80a0fec95e38854bb6a'

  url 'https://storage.googleapis.com/flutter_infra/releases/stable/macos/flutter_macos_v1.9.1+hotfix.6-stable.zip'
  name 'Flutter'
  homepage 'https://flutter.dev/'

  binary 'flutter/bin/flutter', target: 'flutter'

  caveats <<~EOS
     Run the following command to see if there are any dependencies you need to install to complete the setup (for verbose output, add the -v flag):
       $ flutter doctor
     This command checks your environment and displays a report to the terminal window.
     The Dart SDK is bundled with Flutter; it is not necessary to install Dart separately.
     Check the output carefully for other software you might need to install or further tasks to perform (shown in bold text).
  EOS
end
