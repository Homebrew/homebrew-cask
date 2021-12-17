cask "lens" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "5.3.3,20211214.2"

  if Hardware::CPU.intel?
    sha256 "699b42ed232c68c908c7540d165ab251ccb580e56e34baf62dccc817ada24de6"
  else
    sha256 "68bc4d449dd7c912b1bc7fe64b14b20ebcd222b599bcc0e8bd6767e7d72bcbc1"
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
