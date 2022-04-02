cask "gogs" do
  arch = Hardware::CPU.intel? ? "amd64" : "arm64"

  version "0.12.6"

  if Hardware::CPU.intel?
    sha256 "9d10de00d718cc7c3deabc9e668d33dde2d06328a9807db7d9c7280cda9cce06"
  else
    sha256 "cb12b3bd4e748a7a780536d93118736cc8473629fa9443b6dc641c09b00d28c2"
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
