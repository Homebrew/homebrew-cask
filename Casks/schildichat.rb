cask "schildichat" do
  version "1.9.5-sc.2"
  sha256 "2ddcc6ad487fe41c9f738d1f9071cd982d80921fd4fc271ad55e3b2b7407beff"

  url "https://github.com/SchildiChat/schildichat-desktop/releases/download/v#{version}/SchildiChat-#{version}-universal_by_nyantec.dmg", verified: "github.com/SchildiChat"
  name "schildichat"
  desc "Matrix client based on Element with a more traditional IM experience"
  homepage "https://schildi.chat/desktop/"

  livecheck do
    url "https://github.com/SchildiChat/schildichat-desktop"
  end

  app "SchildiChat.app"

  zap trash: "~/Library/Application Support/SchildiChat"
end
