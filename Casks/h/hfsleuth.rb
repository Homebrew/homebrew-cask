cask "hfsleuth" do
  version :latest
  sha256 :no_check

  url "http://newosxbook.com/files/hfsleuth.tar"
  name "HFSleuth"
  desc "HFS+/HFSX file system inspection tool"
  homepage "http://newosxbook.com/tools/hfsleuth.html"

  livecheck do
    skip "unversioned command-line application"
  end

  binary "hfsleuth.universal", target: "hfsleuth"
  manpage "hfsleuth.1"
end
