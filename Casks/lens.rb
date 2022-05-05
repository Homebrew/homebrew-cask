cask "lens" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "5.4.6,20220428.1"

  if Hardware::CPU.intel?
    sha256 "c995abf6de195ec391492feaa5fbcdf5080d3aa3ef4f83d1f2b7766950516771"
  else
    sha256 "91aecc8da9716eb1e63e813fe3b888b55509ca7854e36bc11036df172beb0047"
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
