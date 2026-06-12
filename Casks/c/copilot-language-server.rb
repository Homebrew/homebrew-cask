cask "copilot-language-server" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  on_macos do
    depends_on macos: :big_sur
  end

  version "1.505.0"
  sha256 arm:          "f731aa4deca42fed42ff91ddf709271529764c643fb8f09dc2f5d7057343c8ce",
         intel:        "bac2e6e5e945c89f1ca50f2afdb91cd63978594d346c168a0ed4f996234cb33e",
         arm64_linux:  "a77d27de36a4bbdbede47818700a48299ff4ecbaf57617816b15104bf1fd2e03",
         x86_64_linux: "d643620eda3a7b2c2c6774599b91bf7afd4635c636a429992a1f293820df4f75"

  url "https://github.com/github/copilot-language-server-release/releases/download/#{version}/copilot-language-server-#{os}-#{arch}-#{version}.zip"
  name "GitHub Copilot Language Server"
  desc "Language Server Protocol server for GitHub Copilot"
  homepage "https://github.com/github/copilot-language-server-release"

  binary "copilot-language-server"

  zap trash: "~/.cache/pkg/*/rg",
      rmdir: "~/.cache/pkg"
end
