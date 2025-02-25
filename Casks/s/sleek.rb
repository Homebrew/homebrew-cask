cask "sleek" do
  arch arm: "arm64", intel: "x64"

  version "2.0.17"
  sha256  arm:   "a3a576f83faf599b65b1bd6afb935f9899f748fbe99825c88ea633a4a040cee4",
          intel: "aba331a51c88b9dafb3c657c19f4de9a6b79a84a1e638b612a99c2fe8340ce8c"

  url "https://github.com/ransome1/sleek/releases/download/v#{version}/sleek-#{version}-mac-#{arch}.dmg"
  name "sleek"
  desc "Todo manager based on the todo.txt syntax"
  homepage "https://github.com/ransome1/sleek"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "sleek.app"

  zap trash: [
    "~/Library/Application Support/sleek",
    "~/Library/Preferences/com.todotxt.sleek.plist",
    "~/Library/Saved Application State/com.todotxt.sleek.savedState",
  ]
end
