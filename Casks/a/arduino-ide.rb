cask "arduino-ide" do
  arch arm: "ARM64", intel: "64bit"

  version "2.2.0"
  sha256 arm:   "c5b556d94630c65d68ce6c7f6bc9d51a6ae9cb338b93360ce8aed9a58dec7b84",
         intel: "1b37489ac9408006a7617b49906a4ad0ee4a19ce8770bb72312ff1b148a6f2f5"

  url "https://github.com/arduino/arduino-ide/releases/download/#{version}/arduino-ide_#{version}_macOS_#{arch}.dmg",
      verified: "github.com/arduino/arduino-ide/"
  name "Arduino IDE"
  desc "Electronics prototyping platform"
  homepage "https://www.arduino.cc/en/software"

  livecheck do
    url :url
    strategy :github_latest
  end

  conflicts_with cask: "arduino-ide-nightly"

  app "Arduino IDE.app"

  zap trash: [
    "~/.arduinoIDE",
    "~/Library/Application Support/arduino-ide",
    "~/Library/Saved Application State/cc.arduino.IDE#{version.major}.savedState",
  ]
end
