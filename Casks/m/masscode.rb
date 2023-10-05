cask "masscode" do
  arch arm: "-arm64"

  version "3.9.0"
  sha256 arm:   "2211ae54bedc508cf3a7b6db799c201c02c36f4beb616d7cadba2d0706820950",
         intel: "d109bc81c9f664257138eeef3be4e44c43cdce4ae5c6be4692d805da94b38b8c"

  url "https://github.com/massCodeIO/massCode/releases/download/v#{version}/massCode-#{version}#{arch}.dmg",
      verified: "github.com/massCodeIO/massCode/"
  name "massCode"
  desc "Code snippets manager for developers"
  homepage "https://masscode.io/"

  livecheck do
    url :stable
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
