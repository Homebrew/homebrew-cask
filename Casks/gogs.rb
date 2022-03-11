cask "gogs" do
  arch = Hardware::CPU.intel? ? "amd64" : "arm64"

  version "0.12.5"

  if Hardware::CPU.intel?
    sha256 "fddd527dab4d8933c60c2cda6195f54539f63a46a10d9696b0dca607187546d2"
  else
    sha256 "74e9b518470b8292bad47e8a81350f1d0d14e500ef6c52e252749fd569c180ca"
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
