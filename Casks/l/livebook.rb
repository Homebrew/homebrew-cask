cask "livebook" do
  arch arm: "aarch64", intel: "x64"

  version "0.19.9"
  sha256 arm:   "ec36260c09ade0c8e724cf9c707b16e2997af9046e7e2d8f223008e51dc85d76",
         intel: "c361c66c33d5e974775bedb74920c0752c56003f3498c71c88961db15cae47a4"

  url "https://github.com/livebook-dev/livebook/releases/download/v#{version}/Livebook-darwin-#{arch}.dmg",
      verified: "github.com/livebook-dev/livebook/"
  name "Livebook"
  desc "Code notebooks for Elixir developers"
  homepage "https://livebook.dev/"

  auto_updates true
  conflicts_with cask: "livebook@nightly"
  depends_on macos: :big_sur

  app "Livebook.app"

  zap trash: "~/Library/Application Support/livebook"
end
