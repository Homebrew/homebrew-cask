cask "copilot-language-server" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "1.531.0"
  sha256 arm:          "1cea180c2a349c173fc4eda22176249d5500b1bda48e3855d192e3e04c368ef4",
         intel:        "e7a0efcaf9a1e804d504cb2f48242ffd97612c9d5b2e3dcf457c6ae2dbc8f249",
         arm64_linux:  "e0a30bd7de0956e11ca982ee09d9f698eac780f5336f061dee6e6ee2edcde4fc",
         x86_64_linux: "7c5ca824c4a8f10583199aa014db21c55ff7cc9e55cb408dc7429d5b42f88a7b"

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
