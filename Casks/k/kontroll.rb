cask "kontroll" do
  version "1.0.4"
  sha256 "fad2dde5d53114a8ff30ed75df414f169c13e00f04536e700c70785563811c5d"

  url "https://github.com/zsa/kontroll/releases/download/#{version}/kontroll-#{version}-macos-universal.zip"
  name "Kontroll"
  desc "Keyboard layout switcher for ZSA keyboards"
  homepage "https://github.com/zsa/kontroll"

  binary "kontroll"
end
