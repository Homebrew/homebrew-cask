cask "milkman" do
  version "5.6.0"
  sha256 "4875e4a001f3f3d2a1912d635503f5b61f8231f93396e72c863fd372a3027ec7"

  url "https://github.com/warmuuh/milkman/releases/download/#{version}/milkman-dist-appbundle-macos64-bin.tgz"
  name "Milkman"
  desc "Extensible request and response workbench"
  homepage "https://github.com/warmuuh/milkman"

  app "Milkman.app"

  zap trash: "~/Library/Application Support/Milkman"
end
