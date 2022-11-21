cask "lens" do
  arch arm: "-arm64"

  version "2022.11.210737"
  sha256 arm:   "23aad717598986967da9f321e1b2acd56c213c335fb53e3103a6b17c282aef76",
         intel: "61165349694e1208cbd296aacf5c05f4e77c46f4f296061d493e0e35ce98c6b7"

  url "https://api.k8slens.dev/binaries/Lens-#{version}-latest#{arch}.dmg"
  name "Lens"
  desc "Kubernetes IDE"
  homepage "https://k8slens.dev/"

  livecheck do
    url "https://lens-binaries.s3.amazonaws.com/ide/latest-mac.yml"
    strategy :electron_builder do |data|
      data["version"].sub("-latest", "")
    end
  end

  auto_updates true

  app "Lens.app"

  zap trash: [
    "~/Library/Application Support/Lens",
    "~/Library/Caches/Lens",
    "~/Library/Preferences/com.electron.kontena-lens.plist",
    "~/Library/Saved Application State/com.electron.kontena-lens.savedState",
  ]
end
