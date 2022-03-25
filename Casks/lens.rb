cask "lens" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "5.4.4,20220324.1"

  if Hardware::CPU.intel?
    sha256 "390b0d268cd11dbcf8ac258f732654356e772e04e06d05f410fb22f24b7082e7"
  else
    sha256 "e85bc846b3e78624c51f767183a01528ddc1c3f96ad3acf15b2c8e8c98e6d4fa"
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
