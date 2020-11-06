cask "react-native-debugger" do
  version "0.11.5"
  sha256 "ff58023a5e098329e0e694ba1079b2a287efa36610677136e624cbec496d8e37"

  url "https://github.com/jhen0409/react-native-debugger/releases/download/v#{version}/rn-debugger-macos-x64.zip"
  appcast "https://github.com/jhen0409/react-native-debugger/releases.atom"
  name "React Native Debugger"
  homepage "https://github.com/jhen0409/react-native-debugger"

  auto_updates true

  app "React Native Debugger.app"
end
