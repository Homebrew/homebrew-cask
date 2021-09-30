cask "sonic-visualiser" do
  version "4.4,2813"
  sha256 "07550a124d503139837e809ff06701661749f0de77d43968a9e43494f4ff1bbf"

  url "https://code.soundsoftware.ac.uk/attachments/download/#{version.after_comma}/Sonic%20Visualiser-#{version.before_comma}.dmg",
      verified: "code.soundsoftware.ac.uk/"
  name "Sonic Visualiser"
  desc "Visualisation, analysis, and annotation of music audio recordings"
  homepage "https://www.sonicvisualiser.org/"

  livecheck do
    url "https://www.sonicvisualiser.org/download.html"
    strategy :page_match do |page|
      match = page.match(%r{href=.*?/(\d+)/Sonic%20Visualiser-(\d+(?:\.\d+)*)\.dmg}i)
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
