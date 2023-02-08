cask "schildichat" do
  version "1.11.22-sc.1"
  sha256 "39b55b81099a58dc3fc04e6a3da2be2e559ded2b5fff880b3351cc48473ed969"

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
