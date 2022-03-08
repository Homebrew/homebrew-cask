cask "melonds" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "0.9.4"

  url "https://github.com/Arisotura/melonDS/releases/download/#{version}/melonDS_#{version}_mac_#{arch}.dmg",
      verified: "github.com/Arisotura/melonDS/"
  if Hardware::CPU.intel?
    sha256 "77be2bdd761489afc9b45af4e9d89689a18ecdd4606eb0d93838839ac6f275fc"
  else
    sha256 "004dbbf06ce7dfa3dac0a3587995d6925002f36907e541ba3b0b63bdad092ecf"
  end

  name "melonDS"
  desc "Nintendo DS and DSi emulator"
  homepage "http://melonds.kuribo64.net/"

  app "melonDS.app"

  zap trash: "~/Library/Preferences/melonDS/melonDS.ini"
end
