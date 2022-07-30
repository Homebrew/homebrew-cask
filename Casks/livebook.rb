cask "livebook" do
  arch = Hardware::CPU.intel? ? "x86_64" : "aarch64"

  version "0.6.3"

  if Hardware::CPU.intel?
    sha256 "ebdabcf39edd640092aa5d2ccc985a4cb3426ac1cfb674b8751c48b7e26aba04"
  else
    sha256 "f3d205950b4cfeec57a3594f724bc4751661c4ff8fd8410cc046480c31d00840"
  end

  url "https://github.com/livebook-dev/livebook/releases/download/v#{version}/LivebookInstall-#{version}-macos-#{arch}.dmg",
      verified: "github.com/livebook-dev/livebook"
  name "Livebook"
  desc "Code notebook for Elixir Developers"
  homepage "https://livebook.dev/"

  app "Livebook.app"

  zap trash: "~/Library/Application Support/livebook"
end
