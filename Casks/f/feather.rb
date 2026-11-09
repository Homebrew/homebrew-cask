cask "feather" do
  arch arm: "mac-arm64", intel: "mac"
  linux_arch = on_arch_conditional arm: "-arm64"
  url_end = on_system_conditional macos: "-#{arch}.zip", linux: "#{linux_arch}.AppImage"

  version "2.9.1"
  sha256 arm:          "606c04f910c10dca41bbec735d395206202c068a8049470219250be641915305",
         intel:        "9b9bd9f883383539a10b6cb428e7d84947ac66536491ac46a5070af44046af4e",
         arm64_linux:  "d832c0d618d195e2f4b78c596ceb135c13582396b5a08e9998ef2b6e1638e2e6",
         x86_64_linux: "b6dfa6d3c3c545cc1bed9db621b1c04c2546bb610ee9b23c756938259c029eab"

  on_macos do
    depends_on macos: :sonoma

    app "Feather.app"

    zap trash: "~/Library/Application Support/FeatherWallet"
  end
  on_linux do
    app_image "feather-#{version}#{linux_arch}.AppImage", target: "Feather.AppImage"

    zap trash: "~/.config/feather"
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
