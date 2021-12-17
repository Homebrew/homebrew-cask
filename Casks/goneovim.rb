cask "goneovim" do
  version "0.4.13"

  if MacOS.version <= :catalina
    sha256 "78910bc16ca31ca8dc50de60d415c5041067a9485b9b56f3b2449073dc7aa121"
    url "https://github.com/akiyosi/goneovim/releases/download/v#{version}/Goneovim-v#{version}-macos.tar.bz2"
    app "Goneovim-v#{version}-macos/goneovim.app"
  else
    sha256 "c0599ecbe330ab244ed9b6eb42b934f1b10fef63af8a19cac1a1f21e5ecf7788"
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
