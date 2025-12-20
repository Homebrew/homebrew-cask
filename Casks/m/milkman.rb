cask "milkman" do
  version "5.12.0"
  sha256 "2c7b037d82d40ecf1465b9e09f6fef3da3ca1a1a090e751cfbb94d51473ade0f"

  url "https://github.com/warmuuh/milkman/releases/download/#{version}/milkman-dist-appbundle-macos64-bin.tgz"
  name "Milkman"
  desc "Extensible request and response workbench"
  homepage "https://github.com/warmuuh/milkman"

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  app "Milkman.app"

  zap trash: "~/Library/Application Support/Milkman"
end
