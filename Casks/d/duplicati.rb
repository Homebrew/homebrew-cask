cask "duplicati" do
  version "2.0.8.1_beta_2024-05-07"
  sha256 "c5576c52e838f81c12b7988a70d34562d8622013e024356d28df450835a34523"

  url "https://updates.duplicati.com/beta/duplicati-#{version}.dmg"
  name "Duplicati"
  desc "Store securely encrypted backups in the cloud"
  homepage "https://www.duplicati.com/"

  livecheck do
    url "https://updates.duplicati.com/beta/latest-installers.js"
    regex(/^\s+"name":\s+"duplicati[._-]v?(.+)\.dmg",$/i)
  end

  depends_on formula: "mono"

  app "Duplicati.app"

  zap trash: [
    "~/.config/Duplicati",
    "~/Library/Application Support/Duplicati",
  ]

  caveats do
    requires_rosetta
  end
end
