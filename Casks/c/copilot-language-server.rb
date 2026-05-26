cask "copilot-language-server" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  on_macos do
    depends_on macos: :big_sur
  end

  version "1.496.0"
  sha256 arm:          "8ee20edad3bab9fadc9e15859484d7845b9b3b70dd2ead8fb8080fb1c07f4dd4",
         intel:        "61b6b317b7ce68b4d7332133753c39f7f658e6dff03d311bc1b30ff57b2c322a",
         arm64_linux:  "b228d8ba5cb90e9b3ceae8400b673b58fa4794ab71807341a29496978223577c",
         x86_64_linux: "59122008c41f4813d01910745c7fdd2f64204002898693016c61e59a130f8ecb"

  url "https://github.com/github/copilot-language-server-release/releases/download/#{version}/copilot-language-server-#{os}-#{arch}-#{version}.zip"
  name "GitHub Copilot Language Server"
  desc "Language Server Protocol server for GitHub Copilot"
  homepage "https://github.com/github/copilot-language-server-release"

  binary "copilot-language-server"

  zap trash: "~/.cache/pkg/*/rg",
      rmdir: "~/.cache/pkg"
end
