cask "sonic-visualiser" do
  version "4.5,2824"
  sha256 "8d52092334a0a01c1c8f13f70bcf2b4d85f107b52a216149622cdef66d39f977"

  url "https://github.com/sonic-visualiser/sonic-visualiser/releases/download/sv_v#{version.csv.first}/Sonic.Visualiser-#{version.csv.first}.dmg",
      verified: "github.com/sonic-visualiser/sonic-visualiser/"
  name "Sonic Visualiser"
  desc "Visualisation, analysis, and annotation of music audio recordings"
  homepage "https://www.sonicvisualiser.org/"

  livecheck do
    url "https://www.sonicvisualiser.org/download.html"
    strategy :page_match do |page|
      match = page.match(%r{href=.*?/(\d+)/Sonic%20Visualiser-(\d+(?:\.\d+)*)\.dmg}i)
      next if match.blank?

      "#{match[2]},#{match[1]}"
    end
  end

  depends_on macos: ">= :sierra"

  app "Sonic Visualiser.app"

  zap trash: [
    "~/Library/Saved Application State/org.sonicvisualiser.SonicVisualiser.savedState",
    "~/Library/Preferences/org.sonicvisualiser.Sonic Visualiser.plist",
    "~/Library/Preferences/org.sonicvisualiser.SonicVisualiser.plist",
    "~/Library/Application Support/sonic-visualiser/",
  ]
end
