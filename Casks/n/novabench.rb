cask "novabench" do
  version "5.5.3"
  sha256 :no_check

  url "https://novabench.com/files/novabench.dmg"
  name "Novabench"
  desc "Benchmark tool to quickly test and compare the computer's performance"
  homepage "https://novabench.com/"

  livecheck do
    url "https://novabench.com/download#personal"
    regex(/Novabench\s*(?:<!--[^>]*-->)?\s*(\d+(?:\.\d+)*)/i)
  end

  app "Novabench.app"

  zap trash: [
    "~/Library/Application Support/Novabench",
    "~/Library/Caches/com.novabench.client",
    "~/Library/Saved Application State/com.novabench.client.savedState",
    "~/Library/WebKit/com.novabench.client",
  ]
end
