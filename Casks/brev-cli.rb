# typed: false
# frozen_string_literal: true

cask "brev-cli" do
  version "0.6.12"
  sha256 :no_check

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/brevdev/brev-cli/releases/download/v0.6.12/brev-cli_0.6.12_darwin_amd64.tar.gz"
    end
    if Hardware::CPU.arm?
      url "https://github.com/brevdev/brev-cli/releases/download/v0.6.12/brev-cli_0.6.12_darwin_arm64.tar.gz"
    end
  end

  if OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/brevdev/brev-cli/releases/download/v0.6.12/brev-cli_0.6.12_linux_amd64.tar.gz"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/brevdev/brev-cli/releases/download/v0.6.12/brev-cli_0.6.12_linux_arm64.tar.gz"
    end
  end

  name "brev-cli"
  desc "CLI tool for managing workspaces provided by brev.dev"
  homepage "https://github.com/brevdev/brev-cli/"

  binary "brev"
end
