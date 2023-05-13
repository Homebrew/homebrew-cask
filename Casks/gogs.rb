cask "gogs" do
  arch arm: "arm64", intel: "amd64"

  version "0.13.0"
  sha256 arm:   "f279ff28c951f084c6c0e05e1c602edb5e6d959007b52cb3826b281815f703a2",
         intel: "185fe50d2feb3fd84e470aa65011e7e2506da4ea8a0ce938b0b61ee4bf809509"

  url "https://github.com/gogs/gogs/releases/download/v#{version}/gogs_#{version}_darwin_#{arch}.zip",
      verified: "github.com/gogs/gogs/"
  name "Go Git Service"
  desc "Self-hosted Git service"
  homepage "https://gogs.io/"

  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/gogs.wrapper.sh"

  binary shimscript, target: "gogs"

  preflight do
    File.write shimscript, <<~EOS
      #!/bin/sh
      cd '#{staged_path}/gogs' && ./gogs "$@"
    EOS
  end
end
