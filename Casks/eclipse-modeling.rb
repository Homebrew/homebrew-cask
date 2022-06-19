cask "eclipse-modeling" do
  arch = Hardware::CPU.intel? ? "x86_64" : "aarch64"

  version "4.24.0,2022-06"

  if Hardware::CPU.intel?
    sha256 "5b0823ae92a3c1fcecb6434f8729f30f4cbfe25e79131625597ddd6d42f4cfb0"
  else
    sha256 "efe4598f84ef21de4c8f002dc07c40383c2e4f03665892801f6f575bbc92ea25"
  end

  url "https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/#{version.csv.second}/R/eclipse-modeling-#{version.csv.second}-R-macosx-cocoa-#{arch}.dmg&r=1"
  name "Eclipse Modeling Tools"
  desc "Tools and runtimes for building model-based applications"
  homepage "https://eclipse.org/"

  livecheck do
    cask "eclipse-ide"
  end

  # Renamed to avoid conflict with other Eclipse.
  app "Eclipse.app", target: "Eclipse Modeling.app"
end
