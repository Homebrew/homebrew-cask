cask "gogs" do
  arch arm: "arm64", intel: "amd64"

  version "0.12.10"
  sha256 arm:   "63aaee6f0679486621bab27bb4245bc3ff910f71bffebe2985f3181bd43bbf40",
         intel: "c1825303c05ea38af0dbb1db3abfc91f94c4df37f74ec4eb36d3cef526c776fc"

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
