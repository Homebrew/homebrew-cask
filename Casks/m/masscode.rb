cask "masscode" do
  arch arm: "-arm64"

  version "5.7.0"
  sha256 arm:   "30f52296af5a5e42db96531090ca768f3b5fbea8b8e3ee723b730846800b729a",
         intel: "d921598f2ee9b1e6529a9735874bff018c9d7bd225f46a31154dc7c4e54f6f20"

  url "https://github.com/massCodeIO/massCode/releases/download/v#{version}/massCode-#{version}#{arch}.dmg",
      verified: "github.com/massCodeIO/massCode/"
  name "massCode"
  desc "Code snippets manager for developers"
  homepage "https://masscode.io/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  depends_on macos: :big_sur

  app "massCode.app"

  zap trash: [
        "~/Library/Application Support/massCode",
        "~/Library/Preferences/io.masscode.app.plist",
        "~/Library/Saved Application State/io.masscode.app.savedState",
      ],
      rmdir: "~/massCode"
end
