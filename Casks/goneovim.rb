cask "goneovim" do
  version "0.4.12"

  if MacOS.version <= :catalina
    sha256 "1f300575c7497e6e2490712ef18ceeefca43b21b0cbec03bbda45bb7d93e2516"
    url "https://github.com/akiyosi/goneovim/releases/download/v#{version}/Goneovim-v#{version}-macos.tar.bz2"
    app "Goneovim-v#{version}-macos/goneovim.app"
  else
    sha256 "424d013fb07d701faf823e68b2f32c02f403a0ede5b2ae472a3985eec4711c0d"
    url "https://github.com/akiyosi/goneovim/releases/download/v#{version}/Goneovim-v#{version}-macos11.tar.bz2"
    app "Goneovim-v#{version}-macos11/goneovim.app"
  end

  name "Goneovim"
  desc "Neovim GUI written in Golang, using a Golang qt backend"
  homepage "https://github.com/akiyosi/goneovim"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on formula: "neovim"

  zap trash: [
    "~/Library/Saved Application State/com.ident.goneovim.savedState",
    "~/.goneovim",
  ]
end
