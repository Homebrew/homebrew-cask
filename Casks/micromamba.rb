# typed: false
# frozen_string_literal: true

cask "micromamba" do
  version "0.25.1"

  arch = Hardware::CPU.intel? ? "osx-64" : "osx-arm64"
  if arch == "osx-64"
    sha256 "bd80ed9cb39748a40ae7dfd124aa18e453bf4793e281daf687710c81272e8be1"
  else
    sha256 "b39fb2f9f2bed41c5ad885f41f49ba751a4ba5ee01ee96ca8293a84aa603d1b2"
  end

  url "https://micro.mamba.pm/api/micromamba/#{arch}/#{version}"
  name "micromamba"
  desc "Tiny Version of Mamba: The Fast Cross-Platform Package Manager"
  homepage "www.github.com/mamba-org/mamba"

  binary "bin/micromamba"

  uninstall delete: "$(brew --prefix)/bin/micromamba"

  caveats <<~EOS

    Please run the following to setup your shell:
      micromamba shell init -s <your-shell> -p ~/micromamba
    and restart your terminal.


    For more information, see:#{" "}
      https://mamba.readthedocs.io/en/latest/installation.html#micromamba

  EOS
end
