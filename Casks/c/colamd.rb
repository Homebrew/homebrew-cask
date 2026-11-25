cask "colamd" do
  arch arm: "arm64", intel: "x64"

  version "2.8.1"
  sha256 arm:   "ac38f9dbb752709ff7c968d3af29a660a851c37d8c151754eaa9ee0ef055566e",
         intel: "a6402002136e8db60c8d689f93bb443c6165bc1153e0d9cf4905a2392b6cac6e"

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
