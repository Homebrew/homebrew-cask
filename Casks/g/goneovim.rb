cask "goneovim" do
  arch arm: "arm64", intel: "x86_64"

  version "0.6.10"
  sha256 arm:   "1c83354f9a220dc2447cab9cdd9c156fb5d23981d78b44efc7ca2455ee2bc108",
         intel: "0d63f9717738e3ef7a2efa1d6097c1ed0c0b8b67408f7f173e09494594fa59ed"

  url "https://github.com/akiyosi/goneovim/releases/download/v#{version}/Goneovim-v#{version}-macos-#{arch}.tar.bz2"
  name "Goneovim"
  desc "Neovim GUI written in Golang, using a Golang qt backend"
  homepage "https://github.com/akiyosi/goneovim"

  livecheck do
    url :url
    strategy :github_latest
  end

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
