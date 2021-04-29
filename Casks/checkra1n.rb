cask "checkra1n" do
  version "0.12.3"
  sha256 :no_check

  url "https://assets.checkra.in/downloads/macos/08be5f1b146447a36ae40446d60304451bce9524ba5a3922ebfee4f37b88d15c/checkra1n%20beta%200.12.3.dmg"
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
