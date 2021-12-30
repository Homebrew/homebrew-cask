cask "milkman" do
  version "5.3.0"
  sha256 "5952955f5c0027435460b35bcb64019b843eaf1edbd7af2be8eb8febe845fcba"

  url "https://github.com/warmuuh/milkman/releases/download/#{version}/milkman-dist-appbundle-macos64-bin.tgz"
  name "Milkman"
  desc "Extensible request and response workbench"
  homepage "https://github.com/warmuuh/milkman"

  app "Milkman.app"

  zap trash: "~/Library/Application Support/Milkman"
end
