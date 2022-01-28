cask "brev-cli" do
    version "0.6.12"
    on_macos do
      if Hardware::CPU.intel?
        sha256 "13fc3162edaa5ffadc45984cb854afceadb489199e791e0e69e091e6ea1a23e6"
        url "https://github.com/brevdev/brev-cli/releases/download/v0.6.12/brev-cli_0.6.12_darwin_amd64.tar.gz"
      end
      if Hardware::CPU.arm?
        sha256 "04582d86683fd6e184b08a1a84b70465937c13aa5088cf4f0c08951131210209"
        url "https://github.com/brevdev/brev-cli/releases/download/v0.6.12/brev-cli_0.6.12_darwin_arm64.tar.gz"
      end
    end

    on_linux do
      if Hardware::CPU.intel?
        sha256 "59718dcc4490c8456b81cb3f5eaab6f8663866f7dcebfafe418e4aa88ab8309e"
        url "https://github.com/brevdev/brev-cli/releases/download/v0.6.12/brev-cli_0.6.12_linux_amd64.tar.gz"
      end
      if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
        sha256 "8f61134bd247c9e15847b895f784aed3bdbe0996107742bd0f543457ee1bf991"
        url "https://github.com/brevdev/brev-cli/releases/download/v0.6.12/brev-cli_0.6.12_linux_arm64.tar.gz"
      end
    end

    name "brev-cli"
    desc "CLI tool for managing workspaces provided by brev.dev"
    homepage "https://docs.brev.dev"
    binary "brev"
  end
