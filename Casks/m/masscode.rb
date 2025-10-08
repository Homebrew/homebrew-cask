cask "masscode" do
  arch arm: "-arm64"

  version "4.2.0"
  sha256 arm:   "38b5ba6a20ea09659e0a08b5702f2f4e0daf369d45c165d9ad5a8fcd437adc48",
         intel: "8bfba94f99c011605065f83967811298d7ec72dd838d49054f8a2c965661bf5a"

  url "https://github.com/massCodeIO/massCode/releases/download/v#{version}/massCode-#{version}#{arch}.dmg",
      verified: "github.com/massCodeIO/massCode/"
  name "massCode"
  desc "Code snippets manager for developers"
  homepage "https://masscode.io/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on macos: ">= :big_sur"

  app "massCode.app"

  zap trash: [
        "~/Library/Application Support/massCode",
        "~/Library/Preferences/io.masscode.app.plist",
        "~/Library/Saved Application State/io.masscode.app.savedState",
      ],
      rmdir: "~/massCode"
end
