cask "schildichat" do
  version "1.10.12-sc.1"
  sha256 "eea7951407df84c4cea924f1315d48a971f89194334f9698db89e83c571e4cb9"

  url "https://github.com/SchildiChat/schildichat-desktop/releases/download/v#{version}/SchildiChat-#{version}-universal_by_nyantec.dmg",
      verified: "github.com/SchildiChat/schildichat-desktop/"
  name "SchildiChat"
  desc "Matrix client based on Element with a more traditional IM experience"
  homepage "https://schildi.chat/desktop/"

  livecheck do
    url "https://github.com/SchildiChat/schildichat-desktop/releases"
    strategy :page_match
    regex(/href=.*?SchildiChat-(\d+(?:\.\d+).+)-universal.*?\.dmg/i)
  end

  app "SchildiChat.app"

  zap trash: "~/Library/Application Support/SchildiChat"
end
