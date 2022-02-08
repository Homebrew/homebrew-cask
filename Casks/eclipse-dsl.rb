cask "eclipse-dsl" do
  arch = Hardware::CPU.intel? ? "x86_64" : "aarch64"

  version "4.22.0,2021-12"

  if Hardware::CPU.intel?
    sha256 "46ca25ded90512de578ba8879db1fb18a9bc98498f9b091dce84732cf7c04a78"
  else
    sha256 "33dc8f7bb75659dffc850790db1e9027e63adfea4cf91295918a6dcaa0819ca0"
  end

  url "https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/#{version.csv.second}/R/eclipse-dsl-#{version.csv.second}-R-macosx-cocoa-#{arch}.dmg&r=1"
  name "Eclipse IDE for Java and DSL Developers"
  desc "Eclipse IDE for Java and DSL developers"
  homepage "https://eclipse.org/"

  livecheck do
    cask "eclipse-ide"
  end

  # Renamed to avoid conflict with other Eclipse.
  app "Eclipse.app", target: "Eclipse DSL.app"
end
