cask "keet" do
  arch arm: "Apple-Silicon", intel: "Intel"

  version "2.3.0"
  sha256  arm:   "e3398b8d7be64fef86ec4510b57b07eb445100f681b28e112085c02519dbf732",
          intel: "449c104609bae608627daad59025e8b52e7ea1be5cb42b75e0152bd3ad373447"

  url "https://keet.io/downloads/#{version}/Keet-#{arch}.dmg"
  name "keet"
  desc "Peer-to-peer video and text chat"
  homepage "https://keet.io/"

  livecheck do
    url "https://keet.io/downloads/"
    regex(/(\d+(?:\.\d+)+)/i)
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Keet.app"

  zap trash: [
    "~/Library/Application Support/pear",
    "~/Library/Application Support/pear-runtime",
    "~/Library/Saved Application State/io.keet.app.savedState",
  ]
end
