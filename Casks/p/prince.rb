cask "prince" do
  version "17"
  sha256 "732e588d7930f0dbc570bf9a0afbe5271805f3176490bc635e4446518650644a"

  url "https://www.princexml.com/download/prince-#{version}-macos.zip"
  name "Prince"
  desc "Convert HTML to PDF"
  homepage "https://www.princexml.com/"

  livecheck do
    url "https://www.princexml.com/download/"
    regex(/>\s*Prince\s+v?(\d+(?:\.\d+)*)/i)
  end

  depends_on :macos

  command_wrapper "prince",
                  executable: "#{staged_path}/prince-#{version}-macos/lib/prince/bin/prince",
                  args:       ["--prefix", "#{staged_path}/prince-#{version}-macos/lib/prince"]

  # No zap stanza required
end
