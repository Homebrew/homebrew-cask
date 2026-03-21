cask "hfsleuth" do
  version :latest
  sha256 :no_check

  url "https://newosxbook.com/files/hfsleuth.tar"
  name "HFSleuth"
  desc "HFS+/HFSX file system inspection tool"
  homepage "https://newosxbook.com/tools/hfsleuth.html"

  livecheck do
    skip "unversioned command-line application"
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  binary "hfsleuth.universal", target: "hfsleuth"
  manpage "hfsleuth.1"
end
