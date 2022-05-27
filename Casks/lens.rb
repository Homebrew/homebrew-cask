cask "lens" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "5.5.1,20220526.1"

  if Hardware::CPU.intel?
    sha256 "664128e931d5931c0c146741ea304e07d90827301dafd1e57bbe9785a2cd3c31"
  else
    sha256 "2561b16e66b10bb904c97674503a143ce811bdd5574637f1250b83445cc36033"
  end

  url "https://api.k8slens.dev/binaries/Lens-#{version.csv.first}-latest.#{version.csv.second}#{arch}.dmg"
  name "Lens"
  desc "Kubernetes IDE"
  homepage "https://k8slens.dev/"

  livecheck do
    url "https://lens-binaries.s3.amazonaws.com/ide/latest-mac.yml"
    strategy :electron_builder do |data|
      data["version"].sub("-latest.", ",")
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
