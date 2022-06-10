cask "lens" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "5.5.4,20220609.2"

  if Hardware::CPU.intel?
    sha256 "189425e92d213ab84477190c1313e71d97e5bb59e03a1de9571d34a1db678290"
  else
    sha256 "7ae6d7833d6aa996e7010e6dd36c0277a6834429969c61eab5e3402a235a5a48"
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
