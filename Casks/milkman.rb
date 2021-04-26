cask "milkman" do
  version "5.2.0"
  sha256 "0ac66d97f7cfa506123862276c24f9f24e649ab29140e5474a59c2d28c67fd3a"

  url "https://github.com/warmuuh/milkman/releases/download/#{version}/milkman-dist-appbundle-macos64-bin.tgz"
  name "Milkman"
  desc "Extensible request and response workbench"
  homepage "https://github.com/warmuuh/milkman"

  app "Milkman.app"

  zap trash: "~/Library/Application Support/Milkman"
end
