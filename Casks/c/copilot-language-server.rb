cask "copilot-language-server" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  on_macos do
    depends_on macos: :big_sur
  end

  version "1.493.0"
  sha256 arm:          "2e28b7370d03cbec93cf90c2f0a6eae08bac8395b3bf356134f48e1ec590f3b2",
         intel:        "98054f5f9b54db4d76019e71b85abe942f65f47a6dddcf47303907b3e943c918",
         arm64_linux:  "373f477af7f90dc858c21f1c34efc2d94c56fb1e3894675b43abee93423989e1",
         x86_64_linux: "63c6fb2a33a1b2959d330e0a4dc934659adcdc3685243becdb4d522e94efc17d"

  url "https://github.com/github/copilot-language-server-release/releases/download/#{version}/copilot-language-server-#{os}-#{arch}-#{version}.zip"
  name "GitHub Copilot Language Server"
  desc "Language Server Protocol server for GitHub Copilot"
  homepage "https://github.com/github/copilot-language-server-release"

  binary "copilot-language-server"

  zap trash: "~/.cache/pkg/*/rg",
      rmdir: "~/.cache/pkg"
end
