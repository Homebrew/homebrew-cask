cask "prince" do
  version "16.2"
  sha256 "30a14021a68c38b92c36beb2fddc62ea5425392a86d4cdc6767adde38a9af8aa"

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
