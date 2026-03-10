cask "livebook" do
  arch arm: "aarch64", intel: "x64"

  version "0.19.3"
  sha256 arm:   "e2d623b67e46ab82dd5913455872bfe2ebbb0fdeae3522d7e0b0ec64b70f5cdd",
         intel: "fe0359a4068f10af77ec6c22efd82c174ea920e6594d5d7efcd3ad8f561a81af"

  url "https://github.com/livebook-dev/livebook/releases/download/v#{version}/Livebook-darwin-#{arch}.dmg",
      verified: "github.com/livebook-dev/livebook/"
  name "Livebook"
  desc "Code notebooks for Elixir developers"
  homepage "https://livebook.dev/"

  conflicts_with cask: "livebook@nightly"
  depends_on macos: ">= :big_sur"

  app "Livebook.app"

  zap trash: "~/Library/Application Support/livebook"
end
