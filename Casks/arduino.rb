cask "arduino" do
  version "1.8.13"
  sha256 "84be3fc0be0c18563cb2b5e53971da6aa83e20f1de37e6debae3b55f8b0edbb3"

  url "https://downloads.arduino.cc/arduino-#{version}-macosx.zip"
  appcast "https://github.com/arduino/Arduino/releases.atom"
  name "Arduino"
  desc "Open-source electronics prototyping platform"
  homepage "https://www.arduino.cc/"

  livecheck do
    url "https://www.arduino.cc/en/software/"
    regex(/href=.*?arduino[._-]v?(\d+(?:\.\d+)+)-macosx\.zip/i)
  end

  app "Arduino.app"
  binary "#{appdir}/Arduino.app/Contents/Java/arduino-builder"

  zap trash: [
    "~/Library/Arduino15",
    "~/Library/Preferences/cc.arduino.Arduino.plist",
  ]
end
