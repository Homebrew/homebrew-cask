cask "lens" do
  version "5.2.5-latest.20211001.1"

  if Hardware::CPU.intel?
    sha256 "f6a0e426d3838e179a1d365b98727aaf368660cf1b9d1834355c1bcc6c43e96a"
    url "https://api.k8slens.dev/binaries/Lens-#{version}.dmg"
  else
    sha256 "e595858fa86571ed3eca8a40a4dc2064fd1893cf3fc5deb2fbd6772cdb09e270"
    url "https://api.k8slens.dev/binaries/Lens-#{version}-arm64.dmg"
  end

  name "Lens"
  desc "Kubernetes IDE"
  homepage "https://k8slens.dev/"

  livecheck do
    url "https://lens-binaries.s3.amazonaws.com/ide/latest-mac.yml"
    strategy :electron_builder
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
