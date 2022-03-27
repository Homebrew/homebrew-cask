cask "lens" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "5.4.4,20220325.1"

  if Hardware::CPU.intel?
    sha256 "ce9d23035038a4a6c9c83a5c27d02b2f6614265fef9d95797e6d68c5b5bd063b"
  else
    sha256 "df4103f6e6d811fe554f6ef19efc9076347c53b0e3286ff0424f448f57ff8c3e"
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
