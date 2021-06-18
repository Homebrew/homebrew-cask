cask "jumpcut" do
  version "0.74"
  sha256 "01b0ded737f6a51c9b643ee3b312ae066e4dac31633b91dc04ff97ef840c18a7"

  url "https://github.com/snark/jumpcut/releases/download/v#{version}/Jumpcut-#{version}.tar.bz2",
      verified: "github.com/snark/jumpcut/"
  name "Jumpcut"
  desc "Clipboard manager"
  homepage "https://snark.github.io/jumpcut/"

  depends_on macos: ">= :el_capitan"

  app "Jumpcut.app"
end
