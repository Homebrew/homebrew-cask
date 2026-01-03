cask "quotio" do
  version "0.4.4"
  sha256 "753161726375b9b4aa11595ab584227f026c2417c7cd6cfc80e95994e945de7f"

  url "https://github.com/nguyenphutrong/quotio/releases/download/v#{version}/Quotio-#{version}.dmg"
  name "Quotio"
  desc "Menu bar app for managing multiple AI coding assistants"
  homepage "https://github.com/nguyenphutrong/quotio"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sequoia"

  app "Quotio.app"

  zap trash: [
    "~/Library/Application Support/com.quotio.app",
    "~/Library/Caches/com.quotio.app",
    "~/Library/HTTPStorages/com.quotio.app",
    "~/Library/Preferences/com.quotio.app.plist",
    "~/Library/Saved Application State/com.quotio.app.savedState",
  ]
end
