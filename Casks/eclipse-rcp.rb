cask "eclipse-rcp" do
  arch = Hardware::CPU.intel? ? "x86_64" : "aarch64"

  version "4.24.0,2022-06"

  if Hardware::CPU.intel?
    sha256 "4736e9dd5b2f6458ecd3388436e9b99741106a4bedd100285e27ae1e221a4581"
  else
    sha256 "5951a0f157c7f19975ae9100d0a7e399152fd892d8f8017cd1d2d0440b308cc9"
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
