cask "arduino" do
  version "1.8.18"
  sha256 "971c9a3c257e875228549ced7ca1fb14d5db94a78fd45c5a6fa4f407405f702c"

  url "https://downloads.arduino.cc/arduino-#{version}-macosx.zip"
  name "Arduino"
  desc "Electronics prototyping platform"
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
