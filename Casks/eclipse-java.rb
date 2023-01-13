cask "eclipse-java" do
  arch arm: "aarch64", intel: "x86_64"

  version "4.26.0,2022-12"
  sha256 arm:   "fcabac1b5a7c49ac674bd0f6273f5a93007261d3f7a0296473be9295d9424e00",
         intel: "9f26d17e3633085aaac2b97212205492134ae4e5497cadb9957c2bb6c4b63a59"

  url "https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/#{version.csv.second}/R/eclipse-java-#{version.csv.second}-R-macosx-cocoa-#{arch}.dmg&r=1"
  name "Eclipse IDE for Java Developers"
  desc "Eclipse IDE for Java developers"
  homepage "https://eclipse.org/"

  livecheck do
    cask "eclipse-ide"
  end

  # Renamed to avoid conflict with other Eclipse.
  app "Eclipse.app", target: "Eclipse Java.app"
end
