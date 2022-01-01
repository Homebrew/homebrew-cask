cask "schildichat" do
  version "1.9.8-sc.1"
  sha256 "962e45b1bebf86b95092f82bf08eb865f86769f592ff9b02dee84cfaf9042d86"

  url "https://github.com/SchildiChat/schildichat-desktop/releases/download/v#{version}/SchildiChat-#{version}-universal_by_nyantec.dmg",
      verified: "github.com/SchildiChat/schildichat-desktop/"
  name "SchildiChat"
  desc "Matrix client based on Element with a more traditional IM experience"
  homepage "https://schildi.chat/desktop/"

  app "SchildiChat.app"

  zap trash: "~/Library/Application Support/SchildiChat"
end
