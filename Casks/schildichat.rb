cask "schildichat" do
  version "1.11.13-sc.1"
  sha256 "b256358c4f9c98764e694f7fc020e65d45a19ce2394b6b7903093bf8a8e1d417"

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
