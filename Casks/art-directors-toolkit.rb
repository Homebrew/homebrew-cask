cask "art-directors-toolkit" do
  version "5.5.1"
  sha256 "6b15214f4f928d8519836cd6e60b4f72ecf9365ebc2f29a931c32b81babaddff"

  url "https://www.code-line.com/download/ArtDirectorsToolkit#{version.major}i.zip"
  name "Art Directors Toolkit"
  desc "Toolset for digital media"
  homepage "https://www.code-line.com/artdirectorstoolkit/"

  livecheck do
    url "https://www.code-line.com/downloads/"
    strategy :page_match
    regex(/Art\s*Directors\s*Toolkit.*?\(v?(\d+(?:\.\d+)*)\)/i)
  end

  app "Art Directors Toolkit #{version.major}i.app"

  zap trash: "~/Library/Preferences/com.code-line.artdirectorstoolkit*.plist"
end
