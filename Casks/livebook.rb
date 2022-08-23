cask "livebook" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.6.3"
  sha256 arm:   "4ade56b044cd6386a50df54dc7033367cb9d72f7645bdb42bad331d806203ccf",
         intel: "a28bbdba1acba0cbc80209248a051fb57692d4e52cd57ed0eb0ebed33e180bd7"

  url "https://github.com/livebook-dev/livebook/releases/download/v#{version}/LivebookInstall-#{version}-macos-#{arch}.dmg",
      verified: "github.com/livebook-dev/livebook"
  name "Livebook"
  desc "Code notebooks for Elixir Developers"
  homepage "https://livebook.dev/"

  app "Livebook.app"

  zap trash: "~/Library/Application Support/livebook"
end
