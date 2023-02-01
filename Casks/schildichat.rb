cask "schildichat" do
  version "1.11.22-sc.1"
  sha256 "09d8cbadde2ca5be0e9d06b80b4e7c3975c8bb2125db180eceb02f5efe99d692"

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
