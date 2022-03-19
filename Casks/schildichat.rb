cask "schildichat" do
  version "1.10.4-sc.1"
  sha256 "68a5ebc99b872c97bd3bb7cf343c15e65cac9b84db0e70a9ec99c95760a4f9e7"

  url "https://github.com/SchildiChat/schildichat-desktop/releases/download/v#{version}/SchildiChat-#{version}-universal_by_nyantec.dmg",
      verified: "github.com/SchildiChat/schildichat-desktop/"
  name "SchildiChat"
  desc "Matrix client based on Element with a more traditional IM experience"
  homepage "https://schildi.chat/desktop/"

  app "SchildiChat.app"

  zap trash: "~/Library/Application Support/SchildiChat"
end
