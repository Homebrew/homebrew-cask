cask "pique" do
  version "1.0.0"
  sha256 "69b38016220740cecdebb582ee513566803ea34048c840a1743d01396edbd0e6"

  url "https://github.com/macadmins/pique/releases/download/v#{version}/Pique-#{version}.pkg"
  name "Pique"
  desc "Quick Look extension for syntax-highlighted file previews"
  homepage "https://github.com/macadmins/pique"

  depends_on macos: :sequoia

  pkg "Pique-#{version}.pkg"

  uninstall pkgutil: "io.macadmins.Pique"

  zap trash: "~/Library/Preferences/io.macadmins.pique.plist"
end
