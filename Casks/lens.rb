cask "lens" do
  arch arm: "-arm64"

  version "2022.12.11410"
  sha256 arm:   "3ca589d8267fc1a71b267ac265d630609cdb155863206030eb450685dc35d4c7",
         intel: "ccd4747e625ccbcfa4247d29d750f6ce13df6dba6a836752f98f8114ab3ceafd"

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
