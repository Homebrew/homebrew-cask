cask "copilot-language-server" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  on_macos do
    depends_on macos: :big_sur
  end

  version "1.524.0"
  sha256 arm:          "bc6a6a877353653d199e294d4da5a8326d9c474f453c3524bfa7639b1f86e33c",
         intel:        "92084a4834f64312faa74d0aafa367c687f64647981647d00458bec1a23ae771",
         arm64_linux:  "ec2ddde6cf64dd61cb0c56b849112cffcdba7fcdae56eb560daaf4d46baff580",
         x86_64_linux: "595544b08b8ab037ab752989a410389b19f62bec3935529c3642bf65b324d5d4"

  url "https://github.com/github/copilot-language-server-release/releases/download/#{version}/copilot-language-server-#{os}-#{arch}-#{version}.zip"
  name "GitHub Copilot Language Server"
  desc "Language Server Protocol server for GitHub Copilot"
  homepage "https://github.com/github/copilot-language-server-release"

  binary "copilot-language-server"

  zap trash: "~/.cache/pkg/*/rg",
      rmdir: "~/.cache/pkg"
end
