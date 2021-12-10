cask "eclipse-java" do
  version "4.22.0,2021-12"

  if Hardware::CPU.intel?
    sha256 "e9ace21603240bd9c05bb0af67281ae542a762e5477e054d7a2f1e85770f653e"
  else
    sha256 "97c718bc5c5121525cef86dc87f7931bc2abdf28d165ffdd28cfffb3f79c46ba"
  end

  arch = Hardware::CPU.intel? ? "x86_64" : "aarch64"

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
