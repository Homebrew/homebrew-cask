cask "gogs" do
  arch arm: "arm64", intel: "amd64"

  version "0.13.2"
  sha256 arm:   "f7ff9c432c732e8b6591bfad3782fd9abcacceeb47df366624ef621cb0eded7d",
         intel: "dabe20fa2ae0402a9b97986d5922415fab45019bea11b9c589950209ad45c4d2"

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

  # No zap stanza required
end
