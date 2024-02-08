cask "markdownmdimporter" do
  version "1.0,101"
  sha256 :no_check

  url "https://brettterpstra.com/downloads/Markdown.mdimporter.zip"
  name "Markdown Spotlight Plugin"
  homepage "https://brettterpstra.com/2011/10/18/fixing-spotlight-indexing-of-markdown-content/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  mdimporter "Markdown.mdimporter"
end
