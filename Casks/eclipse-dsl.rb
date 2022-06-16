cask "eclipse-dsl" do
  arch = Hardware::CPU.intel? ? "x86_64" : "aarch64"

  version "4.24.0,2022-06"

  if Hardware::CPU.intel?
    sha256 "68bb8274be67812bbb15b002a94f914a232f9af24a27a758459ffe350d366268"
  else
    sha256 "ca3cb132a996f0dc63851d6444d4276337294a10c8a33e0ab9bdc2eb0e52122e"
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
