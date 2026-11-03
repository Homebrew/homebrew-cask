cask "azure-cli" do
  arch arm: "arm64", intel: "x86_64"
  os macos: "macos", linux: "linux"

  version "2.92.0"
  sha256 arm:          "6fb7d8d6d3db65098e259d5d1d6364359b4b54b5aef4ea6b18bddddd9468407a",
         intel:        "75030452016f1d72cdcd60f1ff71328eac153fe13b00563554ab2dbc0fbe23cb",
         arm64_linux:  "ef78aad855168a61eb372c1624406b97a94f1b23935b9391d131565337acc703",
         x86_64_linux: "b90a489e0447b83e9d265b6d14f8b9306cd96b830c7f93e60bbcdf18cd2532af"

  url "https://github.com/Azure/azure-cli/releases/download/azure-cli-#{version}/azure-cli-#{version}-#{os}-#{arch}.tar.gz"
  name "Azure CLI"
  desc "Microsoft Azure CLI 2.0"
  homepage "https://docs.microsoft.com/cli/azure/overview"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on formula: "python@3.14"

  binary "bin/az"
  bash_completion "completions/bash/az"
  fish_completion "completions/fish/az.fish"
  zsh_completion "completions/zsh/_az"

  zap trash: "~/.azure"
end
