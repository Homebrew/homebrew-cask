cask "schildichat" do
  version "1.11.26-sc.1"
  sha256 "e5556b18d0aeec6594ec4c442836966249fcb77ad0ddfc069b605424ae81646e"

  url "https://github.com/SchildiChat/schildichat-desktop/releases/download/v#{version}/SchildiChat-#{version}-universal_by_nyantec.dmg",
      verified: "github.com/SchildiChat/schildichat-desktop/"
  name "SchildiChat"
  desc "Matrix client based on Element with a more traditional IM experience"
  homepage "https://schildi.chat/desktop/"

  livecheck do
    url "https://github.com/SchildiChat/schildichat-desktop/releases/latest"
    regex(%r{href=["']?[^"' >]*?/tag/v?(\d+(?:\.\d+)+-sc\.?1)["' >]}i)
  end

  app "SchildiChat.app"

  zap trash: "~/Library/Application Support/SchildiChat"
end
