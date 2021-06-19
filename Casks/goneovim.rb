cask "goneovim" do
  version "0.4.11"

  if Hardware::CPU.in_rosetta2? || Hardware::CPU.arm?
    sha256 "8d9d08db2f96e32944f41c9e7de29de83581deab607b199b3a1516cffcc234e4"
    url "https://github.com/akiyosi/goneovim/releases/download/v#{version}/Goneovim-#{version}-macos11.tar.bz2"
    app "Goneovim-#{version}-macos11/goneovim.app"
  else
    sha256 "b33f1ab2038424263fd0d49058b16d43ce3eabd56a603c20b24aaed24295f051"
    url "https://github.com/akiyosi/goneovim/releases/download/v#{version}/Goneovim-#{version}-macos.tar.bz2"
    app "Goneovim-#{version}-macos/goneovim.app"
  end

  name "Goneovim"
  desc "Neovim GUI written in Golang, using a Golang qt backend"
  homepage "https://github.com/akiyosi/goneovim"

  livecheck do
    url :url
    strategy :github_latest
  end

  zap trash: [
    "~/Library/Saved Application State/com.ident.goneovim.savedState",
    "~/.goneovim",
  ]
end
