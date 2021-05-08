cask "razer-macos" do
  version "0.4.2"
  sha256 "e84c49d9846a79ac831fd5a6da8427594dc3792fc242a0eba6200dd05bd016f2"

  url "https://github.com/1kc/razer-macos/releases/download/v#{version}/Razer.macOS-#{version}.dmg"
  name "razer-macos"
  desc "Color effects manager for Razer devices on Catalina (10.15) and Big Sur (11.0)"
  homepage "https://github.com/1kc/razer-macos"

  app "Razer macOS.app"
end
