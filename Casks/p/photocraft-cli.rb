cask "photocraft-cli" do
  version "0.5.0"
  sha256 "8af20fa1254a17f75cd99ccf1d25b6c9ad5cfb51c6a47ff7463c228ef25ad01c"

  url "https://github.com/storytold/photocraft/releases/download/v#{version}/photocraft-cli-#{version}-macos-universal.zip"
  name "PhotoCraft CLI"
  desc "Command-line interface for PhotoCraft"
  homepage "https://getartcraft.com/apps/photocraft"

  depends_on :macos

  binary "photocraft-cli"

  # No zap stanza required
end
