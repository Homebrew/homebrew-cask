cask "dadroit-json-viewer" do
  version "2.0.1,845"
  sha256 :no_check

  url "https://dadroit.com/releases/mac/DadroitJSONViewer.zip"
  name "Dadroit JSON Viewer"
  desc "JSON Viewer"
  homepage "https://dadroit.com/"

  livecheck do
    url "https://dadroit.com/download/"
    regex(/ver.*?(\d+(?:\.\d+)+)\s*?\((\d+)\)/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[0]},#{match[1]}" }
    end
  end

  app "Dadroit JSON Viewer.app"

  zap trash: [
    "~/.cache/DadroitViewer",
    "~/.config/Dadroit",
    "~/Library/Saved Application State/com.dadroit.Viewer.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
