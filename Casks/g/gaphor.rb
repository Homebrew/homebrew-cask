cask "gaphor" do
  version "2.26.0"
  sha256 "1c160fdf854f83de4503a3d45b3ab1c39fa841b278c5430dd2e599f5cdb6a4b2"

  url "https://github.com/gaphor/gaphor/releases/download/#{version}/Gaphor-#{version}.dmg",
      verified: "github.com/gaphor/gaphor/"
  name "Gaphor"
  desc "UML/SysML modelling tool"
  homepage "https://gaphor.org/"

  depends_on macos: ">= :high_sierra"

  app "Gaphor.app"

  uninstall quit: "Gaphor-#{version}"

  zap trash: [
    "~/.cache/gaphor",
    "~/.local/share/gaphor",
  ]

  caveats do
    requires_rosetta
  end
end
