cask "gogs" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.14.1"
  sha256 arm:          "b7904fd28db26741f6fdffa1525238fc4e5dd8a7426db3344ad82be97fba780d",
         intel:        "0ad7b59216924dbce1b9adbefe884d39b0550ba42ee6e0c8f1db2a79eb54042b",
         arm64_linux:  "c112cc0aaad41ae9f7ae92d07724863b57dc6fd63a7d1220571c1b98f677d287",
         x86_64_linux: "bd2d2797794260aef931ea2c51ee0eafbac3eb8410907fe8267acae963509d71"

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
