cask "7777" do
  version "1.1.27"
  sha256 "c069657b7a664ae20baf79206bb39ac6876bcf27af953700d7c6af04aa958cbc"

  url "https://releases.port7777.com/#{version}/macos/7777"
  name "7777"
  desc "Remote AWS database on local port 7777"
  homepage "https://port7777.com/"

  livecheck do
    url "https://releases.port7777.com/latest/version.txt"
    regex(/(\d+(?:\.\d+)+)/i)
  end

  no_autobump! because: :requires_manual_review

  binary "7777"

  # No zap stanza required

  caveats do
    requires_rosetta
  end
end
