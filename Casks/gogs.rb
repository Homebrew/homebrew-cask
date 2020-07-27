cask "gogs" do
  version "0.11.91"
  sha256 "1480a489aa853d01b0f6c9c2fb0aa19b61b5847bcd0cae1f2d8db6833f79b29d"

  # github.com/gogs/gogs/ was verified as official when first introduced to the cask
  url "https://github.com/gogs/gogs/releases/download/v#{version}/darwin_amd64.zip"
  appcast "https://github.com/gogs/gogs/releases.atom"
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
