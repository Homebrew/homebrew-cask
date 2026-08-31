cask "oryn" do
  version "0.1.4"

  on_arm do
    url "https://github.com/SameerMaurya29/Oryn-Browser/releases/download/v#{version}/Oryn-#{version}-arm64.dmg"
    sha256 "3cc4dffc8b1ae7911abeba4df9686b8f8ca544ae4f4a3eac559cc0f20822811e"
  end

  on_intel do
    url "https://github.com/SameerMaurya29/Oryn-Browser/releases/download/v#{version}/Oryn-#{version}.dmg"
    sha256 "ade1814e371e26bd7f43346e005daf231eb2c87523bdd6b2c7c65b434b7ef6ee"
  end

  name "Oryn"
  desc "A calm, privacy-focused Electron browser"
  homepage "https://github.com/SameerMaurya29/Oryn-Browser"

  app "Oryn.app"
end
