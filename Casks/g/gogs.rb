cask "gogs" do
  on_linux do
    arch arm: "armv8", intel: "amd64"
  end
  on_macos do
    arch arm: "arm64", intel: "amd64"
  end
  os macos: ".darwin", linux: "linux"

  version "0.13.3"
  sha256 arm:          "23804e5e246f054f53c2dce1d735f73710d348adc91cd461631a922351097cea",
         intel:        "98e5728e9a18aeef1d182492a3cba9d78d7a17df5d7c54a34db93082970f2fb1",
         arm64_linux:  "c78c0d2a751cb956081bc0f06ed7df4e02f8417a765df90da25a21639c74c607",
         x86_64_linux: "cb146291e29bbf1e7a8dc13e71a23eb47b5ec55eec44680e8bd8777aa0bdaeb4"

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
