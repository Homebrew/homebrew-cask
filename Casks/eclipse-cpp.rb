cask "eclipse-cpp" do
  arch = Hardware::CPU.intel? ? "x86_64" : "aarch64"

  version "4.23.0,2022-03"

  if Hardware::CPU.intel?
    sha256 "b8ec6894a3989bfda5861c5cd9d772d7fb6d37354230d6a1f730c77b76e701f2"
  else
    sha256 "12f1c47951d0263f22a2dd10734767bb41a46b39d4e22e6402aa1c8b8e2cadea"
  end

  url "https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/#{version.csv.second}/R/eclipse-cpp-#{version.csv.second}-R-macosx-cocoa-#{arch}.dmg&r=1"
  name "Eclipse IDE for C/C++ Developers"
  desc "Eclipse IDE for C and C++ developers"
  homepage "https://eclipse.org/"

  livecheck do
    cask "eclipse-ide"
  end

  # Renamed to avoid conflict with other Eclipse.
  app "Eclipse.app", target: "Eclipse CPP.app"
end
