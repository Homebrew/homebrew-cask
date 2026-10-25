cask "colamd" do
  arch arm: "arm64", intel: "x64"

  version "2.7.8"
  sha256 arm:   "cbf09ca40d4c12b7eb0bf9a1185b017f7bfe7baef70615b022cca8fffd63a187",
         intel: "05741593a8b25745d4ac83a503c00f9c4e9b8898ebaae47b20d423e8ded7b00f"

  url "https://github.com/marswaveai/ColaMD/releases/download/v#{version}/ColaMD-#{version}-#{arch}.dmg"
  name "ColaMD"
  desc "Markdown editor"
  homepage "https://colamd.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :ventura

  app "ColaMD.app"

  zap trash: [
    "~/.colamd",
    "~/Library/Application Support/colamd",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/ai.marswave.colamd.sfl*",
    "~/Library/Preferences/ai.marswave.colamd.plist",
  ]
end
