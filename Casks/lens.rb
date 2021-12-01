cask "lens" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "5.3.1,20211130.1"

  if Hardware::CPU.intel?
    sha256 "4eae6cebe323afc0fbca019b517170dfabf34b2ca6ab9f3a3131a0168cfbf38a"
  else
    sha256 "70127a4008f58f83b34fb22e76fcce29a645159471b14b39048d365a26f9fcda"
  end

  url "https://api.k8slens.dev/binaries/Lens-#{version.before_comma}-latest.#{version.after_comma}#{arch}.dmg"
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
