cask "7777" do
  version "1.1.4"
  sha256 "e4e2a518e35aadb65e0e0b14eb2f343d1a56e63c7307bfe57b7956e453a5bfbc"

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
