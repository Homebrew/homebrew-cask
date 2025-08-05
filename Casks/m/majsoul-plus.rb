cask "majsoul-plus" do
  version "2.0.1"
  sha256 "efac0e077f871a092ce1654466055fdc73c74f22da6a2364588d7b460443a52b"

  url "https://github.com/MajsoulPlus/majsoul-plus/releases/download/v#{version}/Majsoul_Plus-#{version}-darwin.dmg"
  name "Majsoul Plus"
  homepage "https://github.com/MajsoulPlus/majsoul-plus/"

  app "Majsoul Plus.app"

  caveats do
    requires_rosetta
  end
end
