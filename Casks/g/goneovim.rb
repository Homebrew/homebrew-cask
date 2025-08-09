cask "goneovim" do
  arch arm: "arm64", intel: "x86_64"

  version "0.6.16"
  sha256 arm:   "c53ead8e262d7b4c50d24e83b32bdd1d41d000c1da8925ffd734e43abecf394d",
         intel: "84bdd271b7a9166082294a062a79132025c9a5bf556c5b2beb4395727e715536"

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
