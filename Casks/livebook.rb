cask "livebook" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.6.3"
  sha256 arm:   "dc841aaecaabe01ed83f3192d5daccdf0c1ce53a0e89dbc19d71f22510780d5e",
         intel: "103cc9274b600f69c45a5d73e1743e8080c62d8ee82274efa4d6b08ea8ce0c37"

  url "https://github.com/livebook-dev/livebook/releases/download/v#{version}/LivebookInstall-#{version}-macos-#{arch}.dmg",
      verified: "github.com/livebook-dev/livebook"
  name "Livebook"
  desc "Code notebooks for Elixir Developers"
  homepage "https://livebook.dev/"

  app "Livebook.app"

  zap trash: "~/Library/Application Support/livebook"
end
