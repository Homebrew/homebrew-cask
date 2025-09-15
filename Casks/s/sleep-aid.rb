cask "sleep-aid" do
  arch arm: "arm64", intel: "x86_64"

  version "1.5"
  sha256 arm:   "07565853c8c4695b5431ffcde576d0bb45df636a3c6041b1a7013cf0c245fe59",
         intel: "f0c4fa86a8758844069970eed32a799280339f42f1d572a26aeca77f56900269"

  url "https://ohanaware.com/sleepaid/release/Sleep_Aid_#{version.dots_to_underscores}_#{arch}.pkg"
  name "Sleep Aid"
  desc "Monitor computer's sleeping habits"
  homepage "https://ohanaware.com/sleepaid/"

  livecheck do
    url "https://ohanaware.com/sleepaid/sleepaid1x.oluf"
    regex(/Sleep[._-]Aid[._-]v?(\d+(?:[._]\d+)+)[._-]#{arch}\.pkg/i)
    strategy :page_match do |page|
      page.scan(regex).map { |match| match[0]&.tr("_", ".") }
    end
  end

  auto_updates true

  pkg "Sleep_Aid_#{version.dots_to_underscores}_#{arch}.pkg"

  uninstall quit:    [
              "com.ohanaware.sleepAid-Help",
              "com.ohanaware.sleepAidRG2",
            ],
            pkgutil: "com.ohanaware.sleepAidRG2"

  zap trash: [
    "~/Library/Application Support/com.ohanaware.sleepAidRG2",
    "~/Library/Caches/com.ohanaware.sleepAidRG2",
    "~/Library/HTTPStorages/com.ohanaware.sleepAidRG2",
    "~/Library/Preferences/com.ohanaware.sleepAidRG2.plist",
    "~/Library/WebKit/com.ohanaware.sleepAidRG2",
  ]
end
