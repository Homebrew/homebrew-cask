cask "goneovim" do
  version "0.6.2"
  sha256 "a43b3a83d9f67c62b8fe0d74164ad6424ce417a5a813862273c121102631ba0d"

  url "https://github.com/akiyosi/goneovim/releases/download/v#{version}/Goneovim-v#{version}-macos.tar.bz2"
  name "Goneovim"
  desc "Neovim GUI written in Golang, using a Golang qt backend"
  homepage "https://github.com/akiyosi/goneovim"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on formula: "neovim"

  app "Goneovim-v#{version}-macos/goneovim.app"
  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/goneovim.wrapper.sh"
  binary shimscript, target: "goneovim"

  preflight do
    File.write shimscript, <<~EOS
      #!/bin/sh
      exec '#{appdir}/goneovim.app/Contents/MacOS/goneovim' "$@"
    EOS
  end

  zap trash: [
    "~/Library/Saved Application State/com.ident.goneovim.savedState",
    "~/.goneovim",
  ]
end
