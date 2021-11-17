cask "7777" do
  version "1.1.3"
  sha256 "fc77c8fa567e83f49e17f583673124ca05fac6134bf963509c1e6acd12cc7f6b"

  url "https://releases.port7777.com/#{version}/macos/7777"
  name "7777"
  desc "Remote AWS database on local port 7777"
  homepage "https://port7777.com/"

  livecheck do
    url "https://releases.port7777.com/latest/version.txt"
    regex(/(\d+(?:\.\d+)+)/i)
  end

  binary "7777"
end
