cask "sonic-visualiser" do
  version "5.0.1,2869"
  sha256 "d719b1b97682f679b7a33f66fb5ce3c54d9fbd596e4076248c3b70dbc1398464"

  url "https://github.com/sonic-visualiser/sonic-visualiser/releases/download/sv_v#{version.csv.first}/Sonic.Visualiser.#{version.csv.first}.dmg",
      verified: "github.com/sonic-visualiser/sonic-visualiser/"
  name "Sonic Visualiser"
  desc "Visualisation, analysis, and annotation of music audio recordings"
  homepage "https://www.sonicvisualiser.org/"

  livecheck do
    url "https://www.sonicvisualiser.org/download.html"
    regex(%r{href=.*?/(\d+)/Sonic%20Visualiser%20(\d+(?:\.\d+)*)\.dmg}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[1]},#{match[0]}" }
    end
  end

  depends_on macos: ">= :sierra"

  app "Sonic Visualiser.app"

  zap trash: [
    "~/Library/Application Support/sonic-visualiser/",
    "~/Library/Preferences/org.sonicvisualiser.Sonic Visualiser.plist",
    "~/Library/Preferences/org.sonicvisualiser.SonicVisualiser.plist",
    "~/Library/Saved Application State/org.sonicvisualiser.SonicVisualiser.savedState",
  ]
end
