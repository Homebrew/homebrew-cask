cask "gogs" do
  arch = Hardware::CPU.intel? ? "amd64" : "arm64"

  version "0.12.8"

  if Hardware::CPU.intel?
    sha256 "bc9afe4e2fbd6cc975b08cddc4293a70cffb43b432290f5799743ad9394196a3"
  else
    sha256 "658cf0a414ce688d31935a0168b50548728d7f8c241c98ebcc985882a36617d0"
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
