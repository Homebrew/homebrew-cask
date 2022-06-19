cask "gogs" do
  arch = Hardware::CPU.intel? ? "amd64" : "arm64"

  version "0.12.9"

  if Hardware::CPU.intel?
    sha256 "f0f58d2c06bc0dc1afd87bceedc4130bac6fb793519c68d6addb90677a226870"
  else
    sha256 "35966c1cb35dc9ed09b2e378aa40e90468399aab7608ff6a68b3a4ecf7e70eca"
  end

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
