cask "comma-chameleon" do
  version "0.5.2"
  sha256 "be08b2088d4065f797d8943ee213882779f99d7130467ed73d0f4d5b73dc02fb"

  url "https://github.com/theodi/comma-chameleon/releases/download/#{version}/Comma.Chameleon-darwin-x64.zip",
      verified: "github.com/theodi/comma-chameleon/"
  name "Comma Chameleon"
  homepage "https://comma-chameleon.io/"

  app "Comma Chameleon-darwin-x64/Comma Chameleon.app"

  caveats do
    requires_rosetta
  end
end
