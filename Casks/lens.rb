cask "lens" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "5.2.7,20211110.1"

  if Hardware::CPU.intel?
    sha256 "51312def38e7c00030a285204ac47f6822ad1b31b93b0d8369947e4ab05cb07f"
  else
    sha256 "8f220e3541c6e5a6d1524532e3a9cafe7e9c33fa9ae0a27c7646500df6af63fe"
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
