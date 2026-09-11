cask "preform" do
  version "3.62.1,648_152762"
  sha256 "b2218acc308631d815432e0fa14031b0448d91bc8fb23791b52b7f1e91da9384"

  url "https://downloads.formlabs.com/PreForm/Release/#{version.csv.first}/PreForm_mac_#{version.csv.first}_release_releaser_#{version.csv.second}.dmg"
  name "PreForm"
  desc "3D printing setup, management, and monitoring"
  homepage "https://formlabs.com/tools/preform/"

  livecheck do
    url "https://updates.formlabs.com/v2/preform/release/mac/sparkle.xml"
    regex(%r{/PreForm[._-]mac[._-]v?(\d+(?:\.\d+)+)[._-]release[._-]releaser[._-](\d+(?:[._-]\d+)+)\.dmg}i)
    strategy :sparkle do |item, regex|
      item.url.scan(regex).map { |match| "#{match[0]},#{match[1]}" }
    end
  end

  depends_on macos: :ventura

  app "PreForm.app"

  uninstall quit: "com.formlabs.PreForm"

  zap trash: [
    "~/Library/Preferences/com.formlabs.PreForm.plist",
    "~/Library/Saved Application State/com.formlabs.PreForm.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
