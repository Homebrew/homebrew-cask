cask "nethlink" do
  version "1.0.2"
  sha256 "5109f6bdf6f9585dd22689cd469e836e1364cf376f3bb609fa58707bbbc49d17"

  url "https://github.com/NethServer/nethlink/releases/download/v#{version}/nethlink-#{version}.dmg"
  name "NethLink"
  desc "Link NethServer systems and provide remote access tools"
  homepage "https://github.com/NethServer/nethlink"

  depends_on macos: ">= :catalina"

  app "NethLink.app"

  zap trash: "~/Library/Application Support/nethlink"

  caveats do
    requires_rosetta
  end
end
