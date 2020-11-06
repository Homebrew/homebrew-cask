cask "cord" do
  version "0.5.7"
  sha256 "8f505b12b94167100b3b8b44ed3cee32ffcc94b73dc44fe0ecc896151f114100"

  # downloads.sourceforge.net/cord/ was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/cord/cord/#{version}/CoRD_#{version}.zip"
  appcast "https://cord.sourceforge.io/sparkle.xml"
  name "CoRD"
  desc "Remote desktop client"
  homepage "https://cord.sourceforge.io/"

  app "CoRD.app"

  zap trash: "~/Library/Application Support/CoRD"
end
