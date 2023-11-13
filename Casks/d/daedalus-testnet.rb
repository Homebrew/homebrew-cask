cask "daedalus-testnet" do
  version "5.3.0,59334,44942bd51"
  sha256 "930c3156a56221b4af294361c76691a0f693edeeef6d16c9ffd7a506928dfd79"

  url "https://lace-daedalus-preview.s3.amazonaws.com/daedalus-#{version.csv.first}-#{version.csv.second}-preview-#{version.csv.third}-x86_64-darwin.pkg",
      verified: "lace-daedalus-preview.s3.amazonaws.com/"
  name "Daedalus Testnet"
  desc "Cryptocurrency wallet for test ada on the Cardano Testnet blockchain"
  homepage "https://developers.cardano.org/en/testnets/cardano/get-started/wallet/"

  livecheck do
    url "https://lace-daedalus-preview.s3.amazonaws.com/daedalus-latest-version.json"
    regex(%r{/daedalus[._-](\d+(?:\.\d+)+)[._-](\d+)[._-]preview[._-]([\da-f]+)[._-]x86_64[._-]darwin\.pkg}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[0]},#{match[1]},#{match[2]}" }
    end
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  pkg "daedalus-#{version.csv.first}-#{version.csv.second}-preview-#{version.csv.third}-x86_64-darwin.pkg"

  uninstall pkgutil: "org.Daedalustestnet.pkg"

  zap trash: [
    "~/Library/Application Support/Daedalus Testnet",
    "~/Library/Preferences/com.electron.daedalus-testnet.plist",
    "~/Library/Saved Application State/com.electron.daedalus-testnet.savedState",
  ]
end
