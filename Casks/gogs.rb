cask "gogs" do
  version "0.12.4"
  sha256 "92d0cb113697a47ee75fa41bc27ab561383ade7929a38e9b6313d160ee053293"

  url "https://github.com/gogs/gogs/releases/download/v#{version}/gogs_#{version}_darwin_amd64.zip",
      verified: "github.com/gogs/gogs/"
  name "Go Git Service"
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
