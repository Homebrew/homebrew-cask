cask "masscode" do
  arch arm: "-arm64"

  version "3.12.1"
  sha256 arm:   "07935b2d734dd82ea65a977f2b6f388ed2ceb1818c85fbb890bf369f19bd1916",
         intel: "ca1ac865b7aedb8a765799a67927f3b59e623efa9a3fbcafb34a7189ae063b10"

  url "https://github.com/massCodeIO/massCode/releases/download/v#{version}/massCode-#{version}#{arch}.dmg",
      verified: "github.com/massCodeIO/massCode/"
  name "massCode"
  desc "Code snippets manager for developers"
  homepage "https://masscode.io/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  app "massCode.app"

  zap trash: [
        "~/Library/Application Support/massCode",
        "~/Library/Preferences/io.masscode.app.plist",
        "~/Library/Saved Application State/io.masscode.app.savedState",
      ],
      rmdir: "~/massCode"
end
