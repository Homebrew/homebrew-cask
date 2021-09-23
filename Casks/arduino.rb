cask "arduino" do
  version "1.8.16"
  sha256 "33f9de1ebc0db5bdb4ee244b4fa86e5fe7ddd460097f405de42a3a970891a50f"

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
