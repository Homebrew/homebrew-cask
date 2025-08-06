cask "slic3r" do
  version "1.3.0"
  sha256 "a50dbe78c4648dfcd0ffec46335554c9fa3348dd494a1f6c2b60406aea57b5cb"

  url "https://github.com/slic3r/Slic3r/releases/download/#{version}/slic3r-#{version}.dmg",
      verified: "github.com/slic3r/Slic3r/"
  name "Slic3r"
  desc "3D printing toolbox"
  homepage "https://slic3r.org/"

  # https://github.com/slic3r/Slic3r/issues/5187
  disable! date: "2024-09-08", because: :unmaintained

  app "Slic3r.app"
  binary "#{appdir}/Slic3r.app/Contents/MacOS/Slic3r", target: "slic3r"

  zap trash: [
    "~/Library/Application Support/Slic3r",
    "~/Library/Preferences/org.slic3r.Slic3r.plist",
    "~/Library/Saved Application State/org.slic3r.Slic3r.savedState",
  ]
end
