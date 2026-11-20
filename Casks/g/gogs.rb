cask "gogs" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.14.4"
  sha256 arm:          "1c20741a6442dc6dc0f2dfa45fa7956ac60994bf41873aecca1dca36754be57c",
         intel:        "4c15424d8421ec48f2d8eec8f2e658607b806b1040446924b2116dc4ee476e90",
         arm64_linux:  "21680249845bf638897af428102a699ab0cc1202ac347ff436466737582971bd",
         x86_64_linux: "98c38c2b0f4ec9a48700504098461a0bdbc382b359c02e8f28a5393a2a26f1cd"

  url "https://github.com/gogs/gogs/releases/download/v#{version}/gogs_v#{version}_#{os}_#{arch}.zip"
  name "Go Git Service"
  desc "Self-hosted Git service"
  homepage "https://gogs.io/"

  command_wrapper "gogs",
                  content: <<~EOS
                    #!/bin/sh
                    cd '#{staged_path}/gogs' && ./gogs "$@"
                  EOS

  zap :not_required
end
