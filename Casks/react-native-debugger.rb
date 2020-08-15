cask "react-native-debugger" do
  version "0.11.4"
  sha256 "5e7d61729dfcec903636fa2374abcd8bc351433d9b3e141706a4c425ace49fca"

  url "https://github.com/jhen0409/react-native-debugger/releases/download/v#{version}/rn-debugger-macos-x64.zip"
  appcast "https://github.com/jhen0409/react-native-debugger/releases.atom"
  name "React Native Debugger"
  homepage "https://github.com/jhen0409/react-native-debugger"

  auto_updates true

  app "React Native Debugger.app"
end
