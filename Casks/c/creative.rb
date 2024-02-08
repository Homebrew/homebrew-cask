cask "creative" do
  version "1.5.3,103"
  sha256 "6f81b1d8b0cbcfc7cf57573f459bf29b680d1bb52ef413a8cf2b74364bbb0aed"

  url "https://files.creative.com/manualdn/Applications/100396/0dGyI1IHqu/Creative%20#{version.csv.first}%20build%20#{version.csv.second}.zip"
  name "Creative"
  desc "Control panel for the Creative hardware"
  homepage "https://support.creative.com/"

  livecheck do
    url "https://support.creative.com/Products/ProductDetails.aspx?catID=1&subCatID=1258&prodID=23677"
    regex(/Creative\s(\d+(?:[._]\d)+)\sbuild\s(\d+(?:\d)+)+\.zip/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[0]},#{match[1]}" }
    end
  end

  depends_on macos: ">= :catalina"

  app "Creative.app"

  uninstall launchctl: [
              "com.creative.DriverXPCService",
              "com.creative.trustudiopc",
            ],
            pkgutil:   [
              "com.creative.AudioDriver",
              "com.creative.ios.creativeapp",
            ]

  zap trash: [
    "~/Library/Application Scripts/com.creative.ios.creativeapp",
    "~/Library/Application Support/com.creative.creativecache.realm",
    "~/Library/Application Support/com.creative.ios.creativeapp",
    "~/Library/Application Support/com.creative.ios.creativeapp.logs",
    "~/Library/Caches/com.creative.ios.creativeapp",
    "~/Library/Containers/com.creative.ios.creativeapp",
    "~/Library/HTTPStorages/com.creative.ios.creativeapp",
    "~/Library/Preferences/com.creative.ios.creativeapp.plist",
  ]
end
