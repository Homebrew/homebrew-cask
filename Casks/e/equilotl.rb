cask "equilotl" do
  version "2.1.4"
  sha256 "70cc2f072fb45782023cea77a7d352a13f79ab30252ea188765b3b0301639601"

  url "https://github.com/Equicord/Equilotl/releases/download/v#{version}/Equilotl.MacOS.zip"
  name "Equilotl"
  desc "Cross platform gui app for installing Equicord"
  homepage "https://github.com/Equicord/Equilotl"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Equilotl.app"

  zap trash: "~/Library/Application Support/Equicord"

  caveats do
    requires_rosetta
  end
end
