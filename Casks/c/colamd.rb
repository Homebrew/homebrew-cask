cask "colamd" do
  arch arm: "arm64", intel: "x64"

  version "2.7.9"
  sha256 arm:   "1a07ba4e368b6bfaa18657c00ee66a91439b52d2b65476bb93cb080e4e33f3b8",
         intel: "7fce3ce111eafadee237c76d4fd5dcd794f66336b8e95ee5f3120dd5b8f4d8d0"

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
