cask "milkman" do
  version "5.7.1"
  sha256 "484ce039a0b71d4b08269edf64f82b0fc645dd1b1269fcb704fd1416ba74a444"

  url "https://github.com/warmuuh/milkman/releases/download/#{version}/milkman-dist-appbundle-macos64-bin.tgz"
  name "Milkman"
  desc "Extensible request and response workbench"
  homepage "https://github.com/warmuuh/milkman"

  app "Milkman.app"

  zap trash: "~/Library/Application Support/Milkman"
end
