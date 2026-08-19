cask "inkdrop" do
  arch arm: "arm64", intel: "x64"

  version "6.1.1"
  sha256 arm:   "65b400b13480912fc59e8adede23aec24262d192d28baca3e176e54506b8c693",
         intel: "172fc9c594f5ad8dd2fc8d9419508e11f647c56a80f54744d8b99128248ead3e"

  url "https://dist.inkdrop.app/releases/inkdrop-#{version}-#{arch}-mac.zip"
  name "Inkdrop"
  desc "Markdown editor"
  homepage "https://www.inkdrop.app/"

  livecheck do
    url "https://dist.inkdrop.app/releases/latest-mac.yml"
    strategy :electron_builder
  end

  depends_on macos: :monterey

  app "Inkdrop.app"

  zap trash: [
    "~/Library/Application Support/inkdrop",
    "~/Library/Caches/info.pkpk.inkdrop",
    "~/Library/Preferences/info.pkpk.inkdrop.helper.plist",
    "~/Library/Preferences/info.pkpk.inkdrop.plist",
    "~/Library/Saved Application State/info.pkpk.inkdrop.savedState",
  ]
end
