cask "milkman" do
  version "5.5.0"
  sha256 "18a6c8952bd662ec0ff2f24bb7ecdcef0fb0af7d1707e7dd4197570defef363a"

  url "https://github.com/warmuuh/milkman/releases/download/#{version}/milkman-dist-appbundle-macos64-bin.tgz"
  name "Milkman"
  desc "Extensible request and response workbench"
  homepage "https://github.com/warmuuh/milkman"

  app "Milkman.app"

  zap trash: "~/Library/Application Support/Milkman"
end
