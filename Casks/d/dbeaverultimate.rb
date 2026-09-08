cask "dbeaverultimate" do
  arch arm: "aarch64", intel: "x86_64"

  version "26.2.0"
  sha256 arm:   "93c8611b343385525a47463942929d7489d6cdbdc9c0452293e3ed3247fd7759",
         intel: "00a749f07d61ec2d3957f03dcbb8fff149ba5cc8fbd74843c3a2ff82e52430b2"

  url "https://downloads.dbeaver.net/ultimate/#{version}/dbeaver-ue-#{version}-macos-#{arch}.dmg"
  name "DBeaver Ultimate Edition"
  desc "Universal database tool and SQL client"
  homepage "https://dbeaver.com/dbeaver-ultimate/"

  livecheck do
    url "https://dbeaver.com/product/dbeaver-ue-version.xml"
    strategy :xml do |xml|
      xml.elements["//version/number"]&.text&.strip
    end
  end

  depends_on macos: :big_sur

  app "DBeaverUltimate.app"

  uninstall signal: ["TERM", "com.dbeaver.product.ultimate"]

  zap trash: [
    "~/Library/DBeaverData",
    "~/Library/Preferences/com.dbeaver.product.ultimate.plist",
    "~/Library/Saved Application State/com.dbeaver.product.ultimate.savedState",
  ]
end
