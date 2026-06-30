cask "pique" do
  version "0.1.0b5"
  sha256 "6f1cc2d58afb720f26da942a32efa8dad357c5d975683ece85ba26998aeab075"

  url "https://github.com/macadmins/pique/releases/download/v#{version}/Pique-#{version}.pkg"
  name "Pique"
  desc "Quick Look extension for syntax-highlighted file previews"
  homepage "https://github.com/macadmins/pique"

  livecheck do
    url "https://github.com/macadmins/pique.git"
    strategy :git
    regex(/^v(\d+(?:\.\d+)+(?:b\d+)?)$/i)
  end

  depends_on macos: :sequoia

  pkg "Pique-#{version}.pkg"

  uninstall pkgutil: "io.macadmins.Pique",

  zap trash: "~/Library/Preferences/io.macadmins.pique.plist"
end
