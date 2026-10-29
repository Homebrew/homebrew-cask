cask "protoys" do
  version "1.2.0,20"
  sha256 "0a7f9794a43581190fc65c9ae7005babc89f22258033c8b61f9c581749f1691c"

  url "https://cdn.amore.computer/releases/com.ti.protoys/#{version.csv.first}-#{version.csv.second}/ProToys.dmg"
  name "ProToys"
  desc "Collection of professional tools and utilities"
  homepage "https://protoys.app/"

  livecheck do
    url "https://protoys.app/"
    strategy :page_match do |page|
      match = page.match(%r{releases/com\.ti\.protoys/(\d+(?:\.\d+)+)-(\d+)/ProToys\.dmg}i)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  auto_updates true
  depends_on macos: :ventura

  app "ProToys.app"

  zap trash: [
    "~/Library/Application Support/com.ti.protoys",
    "~/Library/Caches/com.ti.protoys",
    "~/Library/HTTPStorages/com.ti.protoys",
    "~/Library/Preferences/com.ti.protoys.plist",
    "~/Library/Saved Application State/com.ti.protoys.savedState",
  ]
end
