cask "azure-cli" do
  arch arm: "arm64", intel: "x86_64"
  os macos: "macos", linux: "linux"

  version "2.93.0"
  sha256 arm:          "1912c5b03d7c0545f2eb486e725473e03b5107e130ed380a7d432c467b7dc4c0",
         intel:        "ec33948bfded480bba135658a5868229b7a9509402d1ae9cfddf23abfd59e758",
         arm64_linux:  "5ea63e6eaae1e2398c61a0e953e903b48715a16c92151a43fe173f127f90f6e3",
         x86_64_linux: "b0652d10cd07c93b4eedd4e59926450b05339a0d6ed30092bf37ed09b8126054"

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
  zsh_completion "completions/zsh/_az"
  fish_completion "completions/fish/az.fish"

  zap trash: "~/.azure"
end
