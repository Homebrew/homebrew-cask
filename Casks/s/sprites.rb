cask "sprites" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "macos", linux: "linux"

  version "2026-10-20-hotfix.1"
  sha256 arm:          "3f0a8261106eabd047687b2a10b75e4eb148b0c17738d82a1d1babd86eddf668",
         arm64_linux:  "40f689624d3d04b7160bee9f4a3563818befa92866c9f466cadaffbd1c5d0f22",
         x86_64_linux: "7348f54652fbccaea79d7eb4b57242e61f3d6573927deaaa1427db4461d0a2b2"

  on_macos do
    depends_on arch: :arm64
  end

  url "https://sprites.dev/dl/client/#{version}/sprite-#{os}-#{arch}"
  name "Sprites CLI"
  desc "Command-line interface for Fly.io Sprites"
  homepage "https://sprites.dev/"

  livecheck do
    url "https://sprites.dev/dl/client/latest"
    regex(/^v?(\d+(?:[.-]\w+)+)$/i)
  end

  rename "*", "sprite"

  binary "sprite"
  generate_completions_from_executable "sprite", "completion"

  zap trash: "~/.sprites"
end
