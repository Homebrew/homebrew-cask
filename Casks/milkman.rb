cask "milkman" do
  version "5.4.0"
  sha256 "236c1b8952f265b0b0a354f63f39544a315313228b468a2529c4fb862fb39e3a"

  url "https://github.com/warmuuh/milkman/releases/download/#{version}/milkman-dist-appbundle-macos64-bin.tgz"
  name "Milkman"
  desc "Extensible request and response workbench"
  homepage "https://github.com/warmuuh/milkman"

  app "Milkman.app"

  zap trash: "~/Library/Application Support/Milkman"
end
