cask "copilot-language-server" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  on_macos do
    depends_on macos: :big_sur
  end

  version "1.517.0"
  sha256 arm:          "9cb16959f4569b35d1104eaa615af0a90880d5f983ada5ae96a847afe0bfd8d3",
         intel:        "608ad1b76bb55a83a193450935147742023206535edda87ab02104edd5283b39",
         arm64_linux:  "2cd3d58a5c156b4b84e7579fe91eef22a44a0283dbaba88e5da386af46309e6f",
         x86_64_linux: "2fe41c8629c28c60b7042db8e34be54fbb918f1df337cae099093697dc322ae8"

  url "https://github.com/github/copilot-language-server-release/releases/download/#{version}/copilot-language-server-#{os}-#{arch}-#{version}.zip"
  name "GitHub Copilot Language Server"
  desc "Language Server Protocol server for GitHub Copilot"
  homepage "https://github.com/github/copilot-language-server-release"

  binary "copilot-language-server"

  zap trash: "~/.cache/pkg/*/rg",
      rmdir: "~/.cache/pkg"
end
