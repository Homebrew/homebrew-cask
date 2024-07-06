cask "gaphor" do
  version "2.26.0"
  sha256 "659a602db8e5f3404260fbd05bf4bbdce299ae55370ddbe1fe03c99a60a32fee"

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
