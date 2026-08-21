cask "copilot-language-server" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.534.0"
  sha256 arm:          "d449a75bc3f286c07f153136eb959679fc585cb905685c23778fbffa977757bc",
         intel:        "247e939888e1bde79bc7bc342d8949bd0ec2040571e08ae3810312f519049e34",
         arm64_linux:  "2e20e6b177b46f559c6e48b40c7b7c30a55bf9c0aea14b80a653409861744370",
         x86_64_linux: "27cca080df4d911b3d282523ff54df43f52a7d7709b490025352742a5519a257"

  on_macos do
    depends_on macos: :big_sur
  end

  url "https://github.com/github/copilot-language-server-release/releases/download/#{version}/copilot-language-server-#{os}-#{arch}-#{version}.zip"
  name "GitHub Copilot Language Server"
  desc "Language Server Protocol server for GitHub Copilot"
  homepage "https://github.com/github/copilot-language-server-release"

  binary "copilot-language-server"

  zap trash: "~/.cache/pkg/*/rg",
      rmdir: "~/.cache/pkg"
end
