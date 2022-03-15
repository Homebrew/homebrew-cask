cask "lens" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "5.4.2,20220314.1"

  if Hardware::CPU.intel?
    sha256 "5f52974f306a1531593be8849ac4295241c3c084fa2bbde13664cde24d2bdb7a"
  else
    sha256 "f84fa01f576574e9dac781e092586c06a7cbff250e31498b60077925165af2c3"
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
