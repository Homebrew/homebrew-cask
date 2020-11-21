cask "7777" do
  version "1.0.3"
  sha256 "f74b2cb2ef792fc5ab81b5955a02d593dffe1972af61e20fca8a711ee017581b"

  url "https://releases.port7777.com/#{version}/macos/7777"
  name "7777"
  desc "Remote AWS database on local port 7777"
  homepage "https://port7777.com/"

  binary "7777"
end
