cask "phocus" do
  version "3.8.1"
  sha256 "d8798b89a6845c10688711ff8957cc2c17a6e12407082bfa032fe07bb20c44cb"

  url "https://cdn.hasselblad.com/software/Phocus_for_Mac/#{version}/Phocus-#{version}.dmg"
  name "Hasselblad Phocus"
  desc "RAW file image processing software for Hasselblad cameras"
  homepage "https://www.hasselblad.com/phocus/"

  livecheck do
    url "https://api.hasselblad.com/products/downloads/133/all"
    regex(/Phocus-(\d+(?:\.\d+)+)\.dmg/i)
    strategy :page_match do |page, regex|
      page.match(regex)[1]
    end
  end

  depends_on macos: ">= :catalina"

  app "Phocus.app"

  zap trash: [
    "~/Library/Application Support/dk.hasselblad.phocus",
    "~/Library/Application Support/Phocus",
    "~/Library/Caches/dk.hasselblad.phocus",
    "~/Library/HTTPStorages/dk.hasselblad.phocus",
    "~/Library/Preferences/dk.hasselblad.phocus.plist",
    "~/Library/WebKit/dk.hasselblad.phocus",
  ]
end
