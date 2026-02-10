cask "goneovim" do
  arch arm: "arm64", intel: "x86_64"

  version "0.6.17"
  sha256 arm:   "baba9f98917a474d308127ba615b896700732a644bf880f0b8290a5cf2947425",
         intel: "0835f2726dbb75bbe4d2a7278acba9865c006f5489fa112521aba61dddadd0f8"

  url "https://github.com/akiyosi/goneovim/releases/download/v#{version}/Goneovim-v#{version}-macos-#{arch}.tar.bz2"
  name "Goneovim"
  desc "Neovim GUI written in Golang, using a Golang qt backend"
  homepage "https://github.com/akiyosi/goneovim"

  livecheck do
    url :url
    strategy :github_latest
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on formula: "neovim"
  depends_on macos: ">= :big_sur"

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
