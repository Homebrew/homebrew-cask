cask "livebook" do
  version "0.9.2"
  sha256 "f9ecfcdf9f2a4dec4f11f7f299d3b3e1d6ab8131cb0f173ea530343aa97608e4"

  url "https://github.com/livebook-dev/livebook/releases/download/v#{version}/LivebookInstall-v#{version}-macos-universal.dmg",
      verified: "github.com/livebook-dev/livebook/"
  name "Livebook"
  desc "Code notebooks for Elixir developers"
  homepage "https://livebook.dev/"

  app "Livebook.app"

  zap trash: "~/Library/Application Support/livebook"
end
