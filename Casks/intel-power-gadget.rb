cask "intel-power-gadget" do
  version "3.7.0,b7b1b3e1dffd9b20"
  sha256 "4a1f6e720edca9577fd5fad7c0775f74d4495b20fd59a835a6f0f38460ccc3c1"

  url "https://software.intel.com/sites/landingpage/powergadget/updates/IntelPowerGadgetMac/#{version.csv.second}/Intel%20Power%20Gadget.dmg"
  name "Intel Power Gadget"
  desc "Power usage monitoring tool enabled for Intel Core processors"
  homepage "https://software.intel.com/content/www/us/en/develop/articles/intel-power-gadget.html"

  livecheck do
    url "https://software.intel.com/sites/landingpage/powergadget/?app=IntelPowerGadgetMac"
    strategy :page_match do |page|
      JSON.parse(page)["updates"].map do |update|
        "#{update["version"]},#{update["url"][%r{/(\h+)/Intel%20Power%20Gadget\.dmg}i, 1]}"
      end
    end
  end

  auto_updates true
  depends_on macos: ">= :el_capitan"
  depends_on arch: :x86_64

  pkg "Install Intel Power Gadget.pkg"

  uninstall pkgutil: "com.intel.pkg.PowerGadget.*",
            kext:    "com.intel.driver.EnergyDriver"

  zap trash: [
    "~/Library/Caches/com.intel.PowerGadget",
    "~/Library/Preferences/com.intel.PowerGadget.plist",
  ]
end
