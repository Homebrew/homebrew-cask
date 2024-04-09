cask "schildichat" do
  version "1.11.30-sc.2"
  sha256 "0eb09b23fc9c9f49cb72243149a097291cf01a7f344ed830ab0ce2ccedcc0681"

  url "https://github.com/SchildiChat/schildichat-desktop/releases/download/v#{version}/SchildiChat-#{version}-universal_by_nyantec.dmg",
      verified: "github.com/SchildiChat/schildichat-desktop/"
  name "SchildiChat"
  desc "Matrix client based on Element with a more traditional IM experience"
  homepage "https://schildi.chat/desktop/"

  deprecate! date: "2024-04-06", because: :discontinued

  app "SchildiChat.app"

  zap trash: "~/Library/Application Support/SchildiChat"
end
