cask "art-directors-toolkit" do
  version "5.5.1"
  sha256 "6b15214f4f928d8519836cd6e60b4f72ecf9365ebc2f29a931c32b81babaddff"

  url "https://www.code-line.com/download/ArtDirectorsToolkit#{version.major}i.zip"
  appcast "https://www.code-line.com/downloads/"
  name "Art Directors Toolkit"
  homepage "https://www.code-line.com/artdirectorstoolkit/"

  app "Art Directors Toolkit #{version.major}i.app"

  zap trash: "~/Library/Preferences/com.code-line.artdirectorstoolkit*.plist"
end
