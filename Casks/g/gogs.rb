cask "gogs" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.14.3"
  sha256 arm:          "6503f142bab77829147d531ad2e499d4d1f47487ad89e4949e2064accad3cb30",
         intel:        "c01d3bbd6e1962277fd4f620c402d0ce2141e7899ab60a51bc588573d774c150",
         arm64_linux:  "e74b09fc67785668ea5297e25d659e75105677bc2304f80ae97414ae53fd1a58",
         x86_64_linux: "a9d1e1e37865e84c6d299735a4e84067ebc5cdf79ea111ff8008dc4eee007005"

  url "https://github.com/gogs/gogs/releases/download/v#{version}/gogs_v#{version}_#{os}_#{arch}.zip",
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
