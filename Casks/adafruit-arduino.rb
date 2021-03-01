cask "adafruit-arduino" do
  version "1.6.4"
  sha256 "f68f8d6397b2eca277fecb3638e4f2f4c44bab0285f89adcc9ca237333eb4edd"

  url "https://adafruit-download.s3.amazonaws.com/adafruit-arduino-#{version}-macosx.zip",
      verified: "adafruit-download.s3.amazonaws.com/"
  name "Adafruit Arduino"
  homepage "https://www.adafruit.com/"

  conflicts_with cask: "arduino"

  app "Arduino.app"
end
