cask "milkman" do
  version "4.6.0"
  sha256 "4fc001af6f39ff6a4f7b50c02e4d95d9666edf63c1eab5082e66aacccc672e66"

  url "https://github.com/warmuuh/milkman/releases/download/#{version}/milkman-dist-appbundle-macos64-bin.tgz"
  appcast "https://github.com/warmuuh/milkman/releases.atom"
  name "Milkman"
  homepage "https://github.com/warmuuh/milkman"

  app "Milkman.app"

  zap trash: "~/Library/Application Support/Milkman"
end
