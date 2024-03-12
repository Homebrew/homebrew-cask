cask "milkman" do
  version "5.9.0"
  sha256 "46cc3a7b763c9b7ba6edae7f901c9ba948a020702c2d976109849bae1cc0cf0c"

  url "https://github.com/warmuuh/milkman/releases/download/#{version}/milkman-dist-appbundle-macos64-bin.tgz"
  name "Milkman"
  desc "Extensible request and response workbench"
  homepage "https://github.com/warmuuh/milkman"

  app "Milkman.app"

  zap trash: "~/Library/Application Support/Milkman"
end
