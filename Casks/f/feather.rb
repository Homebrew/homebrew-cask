cask "feather" do
  arch arm: "mac-arm64", intel: "mac"
  linux_arch = on_arch_conditional arm: "-arm64"
  url_end = on_system_conditional macos: "-#{arch}.zip", linux: "#{linux_arch}.AppImage"

  version "2.8.1"
  sha256 arm:          "a35f19be74ca59bad96f7331d3ca8e4f56ec47e82c193f5fc50ddbebce017233",
         intel:        "a44238e9713261a513f5688030cb23bb077584b3682be29bc975d883e7aa31fa",
         arm64_linux:  "ed6e8e885539ee2a76e49ef6cbbeda8586959ae5ad30432f102669a83081aecd",
         x86_64_linux: "c5e95c68ea932067c269d9aa6073450326ec845efba2dfe1e71d8de3d89c15f4"

  on_macos do
    depends_on macos: :monterey

    app "Feather.app"

    zap trash: "~/Library/Application Support/FeatherWallet"
  end
  on_linux do
    app_image "feather-#{version}#{linux_arch}.AppImage", target: "Feather.AppImage"
  end

  url "https://github.com/feather-wallet/feather/releases/download/#{version}/feather-#{version}#{url_end}"
  name "Feather"
  desc "Monero desktop wallet"
  homepage "https://featherwallet.org/"

  livecheck do
    url "https://featherwallet.org/updates.json"
    strategy :json do |json|
      json.dig("platform", arch, "version")
    end
  end
end
