cask "gogs" do
  arch = Hardware::CPU.intel? ? "amd64" : "arm64"

  version "0.12.7"

  if Hardware::CPU.intel?
    sha256 "f1389c1363726a30b21904fab05a92db1d2e81d1ca6e9a87c1a9ff31660d0d0c"
  else
    sha256 "32d1c70bcaa6f80aabd2df3542f36093569af858b8c29deb1f8f3da42018d535"
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
