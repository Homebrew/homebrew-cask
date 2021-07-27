cask "7777" do
  version "1.0.7"
  sha256 "e386d78cf6853f176c06ed99a26e688cf3434ee365da0eb1a4c6b5cd0137a438"

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
