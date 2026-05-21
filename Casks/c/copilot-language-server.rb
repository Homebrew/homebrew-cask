cask "copilot-language-server" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  on_macos do
    depends_on macos: :big_sur
  end

  version "1.494.0"
  sha256 arm:          "c11cba178c290c666c1ce875077b3c191ff22deb885b16ccdd446f118b308671",
         intel:        "d668743b72de3aa7059a776b3271f3d4a89c36ad2d59f803e6a47911361c629c",
         arm64_linux:  "b1e5d617a0e48a6d745978f0076b5611f0352ca0e17f7f3ca20e83438404f6ff",
         x86_64_linux: "60b8c9a4d024bc4fee9b3f157a3e398028ba470a77a35f57e52bcadbeac5487f"

  url "https://github.com/github/copilot-language-server-release/releases/download/#{version}/copilot-language-server-#{os}-#{arch}-#{version}.zip"
  name "GitHub Copilot Language Server"
  desc "Language Server Protocol server for GitHub Copilot"
  homepage "https://github.com/github/copilot-language-server-release"

  binary "copilot-language-server"

  zap trash: "~/.cache/pkg/*/rg",
      rmdir: "~/.cache/pkg"
end
