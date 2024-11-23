cask "poker-copilot" do
  version "7.52,9459"
  sha256 "29a3851a7872b3b243ea0602bc3442d4de8fd02a2e0f79b7339b85a50ce9f467"

  url "https://static.pokercopilot.com/pokercopilot_macos_#{version.csv.first.dots_to_underscores}_build_#{version.csv.second}.dmg"
  name "Poker Copilot"
  desc "Online poker HUD and tracking software"
  homepage "https://pokercopilot.com/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/pokercopilot_macos[._-]v?(\d+(?:[._]\d+)+)[._-]build[._-](\d+)\.dmg}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[0].tr("_", ".")},#{match[1]}" }
    end
  end

  depends_on macos: ">= :el_capitan"

  app "Poker Copilot.app"

  zap trash: "~/Library/Application Support/com.barbarysoftware.pokercopilot"

  caveats do
    requires_rosetta
  end
end
