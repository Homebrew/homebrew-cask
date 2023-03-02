cask "arduino" do
  arch arm: "arm64", intel: "64bit"

  version "2.0.4"
  sha256 arm:   "aa55f52258c6e461611ebf15d1ba31e171814cbee500d37566f8cab2b05eb6ed",
         intel: "1d093666225eae2f512d603103199e9953983965b6ec6ac7d8e1960bd1c9fe71"

  url "https://downloads.arduino.cc/arduino-ide/arduino-ide_#{version}_macOS_#{arch}.zip"
  name "Arduino"
  desc "Electronics prototyping platform"
  homepage "https://www.arduino.cc/"

  conflicts_with cask: "homebrew/cask-versions/arduino-nightly"

  app "Arduino IDE.app"
  binary "#{appdir}/Arduino.app/Contents/Java/arduino-builder"

  zap trash: [
    "~/Library/Arduino15",
    "~/Library/Preferences/cc.arduino.Arduino.plist",
    "~/Library/Saved Application State/cc.arduino.Arduino.savedState",
  ]

  caveats do
    discontinued
  end
end
