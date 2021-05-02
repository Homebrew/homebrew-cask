cask "react-native-debugger" do
  version "0.11.8"
  sha256 "d90afcc6b8146550824585e5859997fa31c3456ed1aa1f2f20689539e7354cde"

  url "https://github.com/jhen0409/react-native-debugger/releases/download/v#{version}/rn-debugger-macos-x64.zip"
  name "React Native Debugger"
  homepage "https://github.com/jhen0409/react-native-debugger"

  auto_updates true

  app "React Native Debugger.app"
end
