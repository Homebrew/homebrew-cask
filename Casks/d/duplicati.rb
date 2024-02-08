cask "duplicati" do
  version "2.0.7.1_beta_2023-05-25"
  sha256 "99c7987cb2e8c8ac03bdfc31429a82db0e1364995fd269e8ef2a3514045eda05"

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
