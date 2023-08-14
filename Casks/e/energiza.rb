cask "energiza" do
  version "1.3.0"
  sha256 :no_check

  url "https://appgineers.de/energiza/files/Energiza.zip"
  name "Energiza Pro"
  desc "Charging manager for your MacBooks"
  homepage "https://appgineers.de/energiza/"

  livecheck do
    url "https://appgineers.de/energiza/files/appcast.xml"
    strategy :sparkle, &:short_version
  end

  depends_on macos: ">= :high_sierra"

  app "Energiza.app"
end
