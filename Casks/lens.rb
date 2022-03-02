cask "lens" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "5.4.0,20220301.1"

  if Hardware::CPU.intel?
    sha256 "f9c7f5351c80d1f91b786d3668eac81e9e2aaf0d42bb49c8eafa6341f363aaec"
  else
    sha256 "092f147ba1996b7d576f6f18a5548b46b8390740c12ced97ec5485032e417c03"
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
