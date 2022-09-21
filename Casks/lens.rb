cask "lens" do
  arch arm: "-arm64"

  version "2022.9.211442"
  sha256 arm:   "2cbf241de442a601e26de9a2c048154932d7c3f720edc24f0c92779faf27814d",
         intel: "4c56fb63753dbaf0d85de41d175e9406c934377991d9559d91b88bcf9c7bfefd"

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
