cask "gogs" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.14.2"
  sha256 arm:          "2996f72f5cca4cead31166fb7adc9673ef209827851bcb1dcf45039da1dc59e3",
         intel:        "00fe70ea1bae2f756c1d31909d09934cbc26264364471a2cdb5cf4a247cc0f91",
         arm64_linux:  "966e3ae629ef8ec176d03aa0d23e659201b269b310704fddd3f19b15e552dc0b",
         x86_64_linux: "4bdc61792f145f87a3f7f6f822efb6caa97d67095404f8e526b8a943c9b8b5e9"

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
