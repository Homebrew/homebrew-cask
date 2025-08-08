cask "goneovim" do
  arch arm: "arm64", intel: "x86_64"

  version "0.6.15"
  sha256 arm:   "56ae2dd2a7c4c8087f271907013a9b79f3d4094734aae474f3334dd7f8db18c4",
         intel: "e354b4e6c31e90dfe81ca5f39fb0dcf1da987e78145ab700310503952820d4d0"

  url "https://github.com/akiyosi/goneovim/releases/download/v#{version}/Goneovim-v#{version}-macos-#{arch}.tar.bz2"
  name "Goneovim"
  desc "Neovim GUI written in Golang, using a Golang qt backend"
  homepage "https://github.com/akiyosi/goneovim"

  livecheck do
    url :url
    strategy :github_latest
  end

  disable! date: "2026-09-01", because: :unsigned

  depends_on formula: "neovim"

  app "goneovim-v#{version}-macos-#{arch}/goneovim.app"
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
    "~/.goneovim",
    "~/Library/Saved Application State/com.ident.goneovim.savedState",
  ]
end
