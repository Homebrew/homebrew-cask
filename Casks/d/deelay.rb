cask "deelay" do
  version "1.2.1,2023,10"
  sha256 "9b239868716402024f19b942ccfbcb9ceb01e2bd82ae64d34df56afee9db85e1"

  url "https://sixthsample.com/wp-content/uploads/#{version.csv.second}/#{version.csv.third}/Deelay-#{version.csv.first}.zip"
  name "Deelay"
  desc "Delay plugin"
  homepage "https://sixthsample.com/deelay/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/(\w+)/(\w+)/deelay[._-]v?(\d+(?:\.\d+)+)\.zip}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[2]},#{match[0]},#{match[1]}" }
    end
  end

  depends_on macos: ">= :high_sierra"

  pkg "Deelay-#{version.csv.first}/macOS Installer/Deelay-#{version.csv.first}-Installer.pkg"

  uninstall pkgutil: [
    "com.sixthsample.pkg.deelay.aax",
    "com.sixthsample.pkg.deelay.au",
    "com.sixthsample.pkg.deelay.presets",
    "com.sixthsample.pkg.deelay.vst3",
  ]

  zap trash: "~/Library/Application Support/Sixth Sample/Deelay.preferences"
end
