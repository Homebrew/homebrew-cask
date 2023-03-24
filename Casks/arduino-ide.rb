cask "arduino-ide" do
  arch arm: "arm64", intel: "64bit"

  version "2.0.4"
  sha256 arm:   "0aac2f4f4570f716d7c73c1f5d1cd8e7c089a06095f442883539875048c3175c",
         intel: "8b9aa3a20adc0d4c93948d1714588ad32a8011c5ddcd10cc93db23e029974332"

  url "https://downloads.arduino.cc/arduino-ide/arduino-ide_#{version}_macOS_#{arch}.dmg"
  name "Arduino IDE"
  desc "Electronics prototyping platform"
  homepage "https://www.arduino.cc/en/software"

  livecheck do
    url "https://www.arduino.cc/en/software/"
    regex(/href=.*?arduino[._-]ide[._-]?(\d+(?:\.\d+)+)[._-]macos[._-]#{arch}\.dmg/i)
  end

  conflicts_with cask: "arduino-ide-nightly"

  app "Arduino IDE.app"

  zap trash: [
    "~/.arduinoIDE",
    "~/Library/Application Support/arduino-ide",
  ]
end
