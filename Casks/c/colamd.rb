cask "colamd" do
  arch arm: "arm64", intel: "x64"

  version "2.7.7"
  sha256 arm:   "e9a4f36541cc078a14a6282d82327c82fff7619ceb17c34fc43eb4c9446d0274",
         intel: "4b34cf4a651279cea8db3fa8b7926cf4f3d758f44331dec37c69ee72ebf49657"

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
