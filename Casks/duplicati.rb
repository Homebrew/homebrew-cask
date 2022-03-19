cask "duplicati" do
  version "2.0.6.3_beta_2021-06-17"
  sha256 "7a26fd69b7016e88a23ff03474eb78e174da463c4967b90c0b54f07a94027e18"

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
end
