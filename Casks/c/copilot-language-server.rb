cask "copilot-language-server" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  on_macos do
    depends_on macos: :big_sur
  end

  version "1.503.0"
  sha256 arm:          "26276a1a5e6e2a61843a55cdad1d2049103be4bc4dba1e3a4d70d57a01c14443",
         intel:        "7cfe93d9a26c093d72b3398cee6a7408792a52c95d2f2022fbffabaa8e6c2550",
         arm64_linux:  "9ba1c5b360adb911e2d5fc0808c13511d0df919ce04eb309115479bfb2824256",
         x86_64_linux: "f9b65f8ede2af85c53fb35ab007e27130a6e83e3f89b7bd802031fb34145193c"

  url "https://github.com/github/copilot-language-server-release/releases/download/#{version}/copilot-language-server-#{os}-#{arch}-#{version}.zip"
  name "GitHub Copilot Language Server"
  desc "Language Server Protocol server for GitHub Copilot"
  homepage "https://github.com/github/copilot-language-server-release"

  binary "copilot-language-server"

  zap trash: "~/.cache/pkg/*/rg",
      rmdir: "~/.cache/pkg"
end
