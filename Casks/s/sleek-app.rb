cask "sleek-app" do
  arch arm: "arm64", intel: "x64"

  version "2.0.29"
  sha256 arm:   "f4a48c0cb561e974b3047d23b18efdfa423fad6c1b89d48f231bfb44a92c90a9",
         intel: "0873047b8b5b21a7f6eaa384f8a76641522e952076f35c14974b28b4ad0967d1"

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
