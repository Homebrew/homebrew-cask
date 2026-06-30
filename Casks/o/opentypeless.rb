cask "opentypeless" do
  version "1.1.46"
  sha256 "bb00542ca448a69b9192117be1c479ecdba097999455752d0d8654b72b3de58f"

  url "https://github.com/tover0314-w/opentypeless/releases/download/v#{version}/OpenTypeless_#{version}_universal.dmg",
      verified: "github.com/tover0314-w/opentypeless/"
  name "OpenTypeless"
  desc "AI voice input, rewriting, and voice Q&A tool"
  homepage "https://www.opentypeless.com/"

  livecheck do
    url "https://github.com/tover0314-w/opentypeless"
    strategy :github_latest
  end

  depends_on macos: :catalina

  app "OpenTypeless.app"
end
