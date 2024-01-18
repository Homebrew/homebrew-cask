cask "milkman" do
  version "5.8.0"
  sha256 "d88f6560dec0bcbb0cbf1758ac2c6523df70a0b79cd2db87b280687904d81eb9"

  url "https://github.com/warmuuh/milkman/releases/download/#{version}/milkman-dist-appbundle-macos64-bin.tgz"
  name "Milkman"
  desc "Extensible request and response workbench"
  homepage "https://github.com/warmuuh/milkman"

  app "Milkman.app"

  zap trash: "~/Library/Application Support/Milkman"
end
