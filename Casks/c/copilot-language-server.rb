cask "copilot-language-server" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.476.0"
  sha256 arm:          "4ebc3c841bdcfd17422d862a39917f9356e840632b73d4b79ea73d749b46bdbb",
         intel:        "908195961bd652a654cf305ae961e5481fedf83c1fc94ed14dd63a6e18921301",
         arm64_linux:  "6c2f6af0067ffb048a6f38ebf39a4b5a1ad6c4e6cf6580137b3ffa0c531aaa59",
         x86_64_linux: "c2de73c15ed5d0a03883db1f138795f00dac824ad4de52c7bc53ae113f9c3c79"

  url "https://github.com/github/copilot-language-server-release/releases/download/#{version}/copilot-language-server-#{os}-#{arch}-#{version}.zip"
  name "GitHub Copilot Language Server"
  desc "Language Server Protocol server for GitHub Copilot"
  homepage "https://github.com/github/copilot-language-server-release"

  depends_on macos: ">= :big_sur"

  binary "copilot-language-server"

  zap trash: "~/.cache/pkg/*/rg",
      rmdir: "~/.cache/pkg"
end
