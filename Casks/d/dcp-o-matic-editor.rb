cask "dcp-o-matic-editor" do
  version "2.19.1"
  sha256 "7780501c4303e5216620e426f441f38887ffcfc4707d227c54fd90afd9136a37"

  url "https://download.dcpomatic.com/dl.php?id=osx-10.10-editor&version=#{version}"
  name "DCP-o-matic Editor"
  desc "Convert video, audio and subtitles into DCP (Digital Cinema Package)"
  homepage "https://dcpomatic.com/"

  livecheck do
    cask "dcp-o-matic"
  end

  depends_on macos: :big_sur

  app "DCP-o-matic #{version.major} Editor.app"

  zap trash: "~/Library/Preferences/com.dcpomatic.editor.plist"
end
