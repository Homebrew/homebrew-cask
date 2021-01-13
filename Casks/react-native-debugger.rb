cask "react-native-debugger" do
  version "0.11.7"
  sha256 "06cab36041548e3213e9bc3b39a87771812075f0276d22795c5d226e7507de0d"

  url "https://github.com/jhen0409/react-native-debugger/releases/download/v#{version}/rn-debugger-macos-x64.zip"
  appcast "https://github.com/jhen0409/react-native-debugger/releases.atom"
  name "React Native Debugger"
  homepage "https://github.com/jhen0409/react-native-debugger"

  auto_updates true

  app "React Native Debugger.app"
end
