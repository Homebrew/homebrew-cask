cask "spectx" do
  version "1.4.68"
  sha256 "053f6e9d9c7539cd86bfbbc99787483822ee28eebe8f04dd24cd6d2ccd47575d"

  url "https://download.spectx.com/versions/#{version}/SpectXDesktop-v#{version}.dmg"
  appcast "https://www.spectx.com/get-spectx"
  name "SpectX Desktop"
  desc "Parse and investigate raw log files"
  homepage "https://www.spectx.com/"

  app "SpectXDesktop.app"
end
