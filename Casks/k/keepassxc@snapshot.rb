cask "keepassxc@snapshot" do
  version "2.8.0"
  sha256 "bde7044cc2b7bb30c01d3991dcc756da052d2ce5538d56a789323f3168426221"

  url "https://snapshot.keepassxc.org/latest/KeePassXC-#{version}-snapshot.dmg"
  name "KeePassXC"
  desc "Password manager app"
  homepage "https://keepassxc.org/"

  livecheck do
    url "https://snapshot.keepassxc.org/latest/"
    regex(/href=.*?KeePassXC[._-]v?(\d+(?:[._-]\d+)+)-snapshot\.dmg/i)
  end

  deprecate! date: "2025-05-01", because: :unsigned

  app "KeePassXC.app"
  binary "#{appdir}/KeePassXC.app/Contents/MacOS/keepassxc-cli"

  zap trash: "~/.keepassxc"

  caveats do
    requires_rosetta
  end
end
