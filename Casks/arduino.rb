cask "arduino" do
  version "1.8.14"
  sha256 "ec63a8c40d9fbbb06ded4f59d79816567f90bfb81df47604f58db620cbb89f53"

  url "https://downloads.arduino.cc/arduino-#{version}-macosx.zip"
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
