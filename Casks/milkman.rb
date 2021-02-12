cask "milkman" do
  version "5.1.0"
  sha256 "ac460d8fb00992b7c7723859209b9c2f4c5e1172982a5fd43f5b274ffa1b22f1"

  url "https://github.com/warmuuh/milkman/releases/download/#{version}/milkman-dist-appbundle-macos64-bin.tgz"
  appcast "https://github.com/warmuuh/milkman/releases.atom"
  name "Milkman"
  homepage "https://github.com/warmuuh/milkman"

  app "Milkman.app"

  zap trash: "~/Library/Application Support/Milkman"
end
