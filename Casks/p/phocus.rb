cask "phocus" do
  version "4.0.1"
  sha256 "e1c1c90eb89027f89a1b95887a764e3bad46908a9857913bcc12d6fbd28c0483"

  url "https://cdn.hasselblad.com/software/Phocus_for_Mac/#{version.csv.first}/Phocus_#{version.csv.second || version.csv.first}.dmg"
  name "Hasselblad Phocus"
  desc "RAW file image processing software for Hasselblad cameras"
  homepage "https://www.hasselblad.com/phocus/"

  livecheck do
    url "https://api.hasselblad.com/products/downloads/133/all"
    regex(%r{/v?(\d+(?:\.\d+)+)/Phocus[._-]v?(\d+(?:\.\d+)+)\.dmg}i)
    strategy :json do |json, regex|
      json.map do |item|
        match = item["url"]&.match(regex)
        next if match.blank?

        (match[1] == match[2]) ? match[1] : "#{match[1]},#{match[2]}"
      end
    end
  end

  depends_on macos: ">= :monterey"

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
