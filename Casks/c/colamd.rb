cask "colamd" do
  arch arm: "arm64", intel: "x64"

  version "2.8.2"
  sha256 arm:   "b607ff4c9d310d26a5597b103752d9849b3ebe89ab603e6836245bbc3572e929",
         intel: "687b9666649444b8486e8847b7e2b593c82a6e7b8002b9ff1d5b7b92b5e518b2"

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
