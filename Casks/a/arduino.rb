cask "arduino" do
  version "1.8.19"
  sha256 "1d5f4aa4c82c8cf8d858c413928be55963ccd1203552d8dc07f4ca123f814c01"

  url "https://downloads.arduino.cc/arduino-#{version}-macosx.zip"
  name "Arduino"
  desc "Electronics prototyping platform"
  homepage "https://www.arduino.cc/"

  deprecate! date: "2023-12-17", because: :discontinued

  conflicts_with cask: "homebrew/cask-versions/arduino-nightly"

  app "Arduino.app"
  binary "#{appdir}/Arduino.app/Contents/Java/arduino-builder"

  zap trash: [
    "~/Library/Arduino15",
    "~/Library/Preferences/cc.arduino.Arduino.plist",
    "~/Library/Saved Application State/cc.arduino.Arduino.savedState",
  ]
end
