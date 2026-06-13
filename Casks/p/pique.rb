cask "pique" do
  version "0.1.0b5"
  sha256 "6f1cc2d58afb720f26da942a32efa8dad357c5d975683ece85ba26998aeab075"

  url "https://github.com/macadmins/pique/releases/download/v#{version}/Pique-#{version}.pkg"
  name "Pique"
  desc "Quick Look previews with syntax highlighting for configuration files"
  homepage "https://github.com/macadmins/pique"

  livecheck do
    url :url
    regex(/v?(\d+(?:\.\d+)+(?:b\d+)?)/i)
    strategy :github_latest do |json, regex|
      match = json["tag_name"]&.match(regex)
      next if match.blank?

      match[1]
    end
  end

  depends_on macos: :sequoia

  pkg "Pique-#{version}.pkg"

  uninstall pkgutil: "io.macadmins.Pique"

  zap trash: [
    "~/Library/Caches/io.macadmins.pique",
    "~/Library/HTTPStorages/io.macadmins.pique",
    "~/Library/Preferences/io.macadmins.pique.plist",
    "~/Library/Saved Application State/io.macadmins.pique.savedState",
  ]
end
