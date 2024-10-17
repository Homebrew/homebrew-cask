cask "nagstamon" do
  arch arm: "ARM", intel: "Intel"

  version "3.16.0"
  sha256  arm:    "c74b110a924c9b8a813d7aa6da14035f500fd49495344acd93f07031d2f2d21f",
          intel:  "195ad7fcd000e3396089f97746b899c093f16b9cfe7beb81e6225054e83cba4f"

  url "https://github.com/HenriWahl/Nagstamon/releases/download/v#{version}/Nagstamon.#{version}.#{arch}.dmg",
      verified: "github.com/HenriWahl/Nagstamon/"
  name "Nagstamon"
  desc "Nagios status monitor"
  homepage "https://nagstamon.de/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Nagstamon.app"

  zap trash: "~/.nagstamon"

end
