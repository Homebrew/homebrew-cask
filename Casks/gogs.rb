cask "gogs" do
  version "0.12.3"
  sha256 "3e943a13b7f8ade0a87c5f2b40e5db52faab9035ae045d4ee1d0632b9b2479fc"

  url "https://github.com/gogs/gogs/releases/download/v#{version}/gogs_#{version}_darwin_amd64.zip",
      verified: "github.com/gogs/gogs/"
  name "Go Git Service"
  homepage "https://gogs.io/"

  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/gogs.wrapper.sh"

  binary shimscript, target: "gogs"

  preflight do
    IO.write shimscript, <<~EOS
      #!/bin/sh
      cd '#{staged_path}/gogs' && ./gogs "$@"
    EOS
  end
end
