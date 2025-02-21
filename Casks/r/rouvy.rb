cask "rouvy" do
  version "3.10.3"
  sha256 :no_check

  url "https://cdn.rouvy.com/update/Rouvy_Installer.dmg"
  name "ROUVY"
  desc "Indoor cycling and workout app"
  homepage "https://rouvy.com/"

  livecheck do
    url "https://storage.googleapis.com/cdn.virtualtraining.eu/app-versions.json"
    strategy :json do |json|
      json.dig("macos", "latest_version")
    end
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Rouvy.app"

  zap trash: "~/Library/Application Support/eu.virtualtraining.rouvy.mac"

  caveats do
    requires_rosetta
  end
end
