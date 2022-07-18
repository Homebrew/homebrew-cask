cask "growtopia" do
  version "56596"
  sha256 "e267e37af3c08427b7d19f37848c817edfc8f1990b7755622337d58b82c943fd"

  url "https://ubistatic-a.akamaihd.net/0098/#{version}/Growtopia.dmg",
      verified: "ubistatic-a.akamaihd.net/0098/" # Growtopia is owned by Ubisoft, 0098 is where Growtopia-related contents are usually stored on their website
  name "Growtopia"
  desc "Massively multiplayer online sandbox game"
  homepage "https://growtopiagame.com/"

  livecheck do
    url "https://growtopiagame.com/Growtopia-mac.dmg"
    strategy :header_match
    regex(%r{0098/v?(\d+)/Growtopia\.dmg}i)
  end

  app "Growtopia.app"

  zap trash: "~/Library/Application Support/Growtopia"
end
