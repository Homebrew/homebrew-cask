cask "eclipse-rcp" do
  arch = Hardware::CPU.intel? ? "x86_64" : "aarch64"

  version "4.23.0,2022-03"

  if Hardware::CPU.intel?
    sha256 "a7911cbec145f9a382dd70d8bc7223f07d5904d098d6f41f4cb82dee96b3d699"
  else
    sha256 "10aada748b5cf94cb58a29919d211c96146889a97d9bc1076bb1c696e1e4ed91"
  end

  url "https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/#{version.csv.second}/R/eclipse-rcp-#{version.csv.second}-R-macosx-cocoa-#{arch}.dmg&r=1"
  name "Eclipse for RCP and RAP Developers"
  desc "Eclipse IDE for RCP and RAP developers"
  homepage "https://eclipse.org/"

  livecheck do
    cask "eclipse-ide"
  end

  # Renamed to avoid conflict with other Eclipse.
  app "Eclipse.app", target: "Eclipse RCP.app"
end
