cask "milkman" do
  version "5.10.0"
  sha256 "87c231460dba69fdf9db215905503aa677bfc4b1ebd921eabf4270bec1df3365"

  url "https://github.com/warmuuh/milkman/releases/download/#{version}/milkman-dist-appbundle-macos64-bin.tgz"
  name "Milkman"
  desc "Extensible request and response workbench"
  homepage "https://github.com/warmuuh/milkman"

  app "Milkman.app"

  zap trash: "~/Library/Application Support/Milkman"
end
