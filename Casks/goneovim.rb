cask "goneovim" do
  version "0.5.1"
  sha256 "0e00d37872534bf2c495a5ad01c6a2b63790f96cd4a864e7335821d3694774d4"

  url "https://github.com/akiyosi/goneovim/releases/download/v#{version}/Goneovim-v#{version}-macos.tar.bz2"
  name "Goneovim"
  desc "Neovim GUI written in Golang, using a Golang qt backend"
  homepage "https://github.com/akiyosi/goneovim"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on formula: "neovim"

  app "Goneovim-latest-macos/goneovim.app"
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
