cask "milkman" do
  version "5.7.0"
  sha256 "15c06210292b7225aa4c6ac68479638dc21c7f8771f34974386468969c9e670d"

  url "https://github.com/warmuuh/milkman/releases/download/#{version}/milkman-dist-appbundle-macos64-bin.tgz"
  name "Milkman"
  desc "Extensible request and response workbench"
  homepage "https://github.com/warmuuh/milkman"

  app "Milkman.app"

  zap trash: "~/Library/Application Support/Milkman"
end
