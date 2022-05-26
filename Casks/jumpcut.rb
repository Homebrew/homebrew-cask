cask "jumpcut" do
  version "0.82"
  sha256 "4e580ee8558a804a78397bbb5d86b8ea6fed5064aa517250cc836d8cb88ae69e"

  url "https://github.com/snark/jumpcut/releases/download/v#{version}/Jumpcut-#{version}.tar.bz2",
      verified: "github.com/snark/jumpcut/"
  name "Jumpcut"
  desc "Clipboard manager"
  homepage "https://snark.github.io/jumpcut/"

  depends_on macos: ">= :el_capitan"

  app "Jumpcut.app"

  zap trash: "~/Library/Preferences/net.sf.Jumpcut.plist"
end
