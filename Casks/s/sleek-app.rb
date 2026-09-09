cask "sleek-app" do
  arch arm: "arm64", intel: "x64"

  version "2.0.28"
  sha256 arm:   "fb1aa7fc57e6e69e0d6d69afac2a765621bf086b51457730d2013c0acd7d3766",
         intel: "608b5d835ad74e6be6e070cea3f1a98c16a74f4924127a6b673e4455b84e2aef"

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
    "~/Library/Application Support/sleek",
    "~/Library/Preferences/com.todotxt.sleek.plist",
    "~/Library/Saved Application State/com.todotxt.sleek.savedState",
  ]
end
