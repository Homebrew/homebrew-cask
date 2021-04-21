cask "checkra1n" do
  version "0.12.2"
  sha256 "3c44df37558316ccf7e568ec90511f116496f7f6c8c9f223b971b2631b9f7fe5"

  url "https://checkra.in/assets/downloads/macos/#{sha256}/checkra1n%20beta%20#{version}.dmg"
  name "checkra1n"
  desc "Jailbreak for iPhone 5s through iPhone X, iOS 12.0 and up"
  homepage "https://checkra.in/"

  livecheck do
    url "https://checkra.in/"
    strategy :page_match
    regex(%r{href=.*?/checkra1n%20beta%20(\d+(?:\.\d+)*)\.dmg}i)
  end

  app "checkra1n.app"
end
