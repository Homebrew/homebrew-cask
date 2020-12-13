cask "react-native-debugger" do
  version "0.11.6"
  sha256 "c9a9412e157699c579eb082e0fa86fbdc90bcc24120518ae9caf07d3ce2a25e1"

  url "https://github.com/jhen0409/react-native-debugger/releases/download/v#{version}/rn-debugger-macos-x64.zip"
  appcast "https://github.com/jhen0409/react-native-debugger/releases.atom"
  name "React Native Debugger"
  homepage "https://github.com/jhen0409/react-native-debugger"

  auto_updates true

  app "React Native Debugger.app"
end
