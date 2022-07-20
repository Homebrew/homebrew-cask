cask "masscode" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "2.9.0"

  if Hardware::CPU.intel?
    sha256 "0fbbc0c5bf53993af8d10085e5d01b8689b520c3cbf373fab4f058c7d091ba6d"
  else
    sha256 "1302ac9efef51782412c516c7ade37a6ce909839c6ffc851c67629f3011bde6a"
  end

  url "https://github.com/massCodeIO/massCode/releases/download/v#{version}/massCode-#{version}#{arch}.dmg",
      verified: "https://github.com/massCodeIO/massCode/"
  name "massCode"
  desc "Open-source code snippets manager for developers"
  homepage "https://masscode.io/"

  livecheck do
    url :stable
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  app "massCode.app"
end
