cask "schildichat" do
  version "1.9.7-sc.1"
  sha256 "32a1a780235b53bbe27f04b5f77c8e8a3a0a0a595f8d6cf57a9f900844ca3b22"

  url "https://github.com/SchildiChat/schildichat-desktop/releases/download/v#{version}/SchildiChat-#{version}-universal_by_nyantec.dmg",
      verified: "github.com/SchildiChat/schildichat-desktop/"
  name "SchildiChat"
  desc "Matrix client based on Element with a more traditional IM experience"
  homepage "https://schildi.chat/desktop/"

  app "SchildiChat.app"

  zap trash: "~/Library/Application Support/SchildiChat"
end
