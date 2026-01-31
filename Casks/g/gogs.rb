cask "gogs" do
  on_linux do
    arch arm: "armv8", intel: "amd64"
  end
  on_macos do
    arch arm: "arm64", intel: "amd64"
  end
  os macos: "darwin", linux: "linux"

  version "0.13.4"
  sha256 arm:          "ddc99b9d54aa8eb1af86552cbf167b34f06f3f59ffca41a83510407b42a785fb",
         intel:        "a31fa6928732a30d3dda6ef605f2ae0e1aa3c980f4bf69c3802f1a8e1eb3a77c",
         arm64_linux:  "8118465584774788393e0e39c9be21e8a9f31348c7cb2902b04c2b23b20c6d50",
         x86_64_linux: "ac03642810b0d1bd50aca8bc6c307ecc25366bfe6fb188c8bbc20af783ce08a4"

  url "https://github.com/gogs/gogs/releases/download/v#{version}/gogs_#{version}_#{os}_#{arch}.zip",
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
