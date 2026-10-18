cask "sleek-app" do
  arch arm: "arm64", intel: "x64"

  version "2.1.1"
  sha256 arm:   "0a4d1553465f86bc4f6d95a1df9cdff944f246559c3f0fb08a3ffc1f54d6f7fc",
         intel: "3959911a7e2d3ad62ed2a82a86aeaa14a9231864f6ecb30ac18103668905cc06"

  url "https://github.com/ransome1/sleek/releases/download/v#{version}/sleek-#{version}-mac-#{arch}.dmg"
  name "sleek"
  desc "Todo manager based on the todo.txt syntax"
  homepage "https://github.com/ransome1/sleek"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "sleek.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.todotxt.sleek.sfl*",
    "~/Library/Application Support/sleek",
    "~/Library/Preferences/com.todotxt.sleek.plist",
    "~/Library/Saved Application State/com.todotxt.sleek.savedState",
  ]
end
