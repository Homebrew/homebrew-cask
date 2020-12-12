cask "milkman" do
  version "5.0.0"
  sha256 "34ea00506072dbb625d20deb86b11c380006a1e01185266577a322ef024e05b8"

  url "https://github.com/warmuuh/milkman/releases/download/#{version}/milkman-dist-appbundle-macos64-bin.tgz"
  appcast "https://github.com/warmuuh/milkman/releases.atom"
  name "Milkman"
  homepage "https://github.com/warmuuh/milkman"

  app "Milkman.app"

  zap trash: "~/Library/Application Support/Milkman"
end
