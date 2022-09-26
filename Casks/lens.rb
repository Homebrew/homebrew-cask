cask "lens" do
  arch arm: "-arm64"

  version "2022.9.260655"
  sha256 arm:   "3d0dbfa92ffe64946119606ee6738de9c46d6fdbd89c9f7567a12bf370977d5b",
         intel: "6ff66a7d29dc78dbb7f0cb3b07723042857be92f397d54f21e1fd4497b6ca9ce"

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
