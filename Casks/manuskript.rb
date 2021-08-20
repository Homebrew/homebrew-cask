cask "manuskript" do
  version "0.10.0"
  sha256 "f48f9c96af19b42c61a1ab6119e581e9398c33a8795ba5051cc0d44add1d2d7f"

  url "https://github.com/olivierkes/manuskript/releases/download/#{version.major_minor_patch}/manuskript-#{version}-osx.zip",
      verified: "github.com/olivierkes/manuskript/"
  name "Manuskript"
  desc "Tool for writers"
  homepage "https://www.theologeek.ch/manuskript/"

  livecheck do
    url "https://github.com/olivierkes/manuskript/releases/"
    strategy :page_match
    regex(/manuskript[._-]?(\d+(?:\.\d+)+)[._-]?osx\.zip/i)
  end

  binary "manuskript/manuskript"
end
