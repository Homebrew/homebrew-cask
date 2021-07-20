cask "sitebulb" do
  version "5.1.1"
  sha256 "bc8d02c9f0843cd0a6a43e6a9ea96ecdfd79a5348413a319e89df72721cc9548"

  url "https://downloads.sitebulb.com/#{version}/macOS/Sitebulb.dmg"
  name "Sitebulb"
  desc "Website auditing tool"
  homepage "https://sitebulb.com/"

  livecheck do
    url "https://sitebulb.com/download/"
    strategy :page_match
    regex(%r{href=.*?/(\d+(?:\.\d+)*)/macOS/Sitebulb\.dmg}i)
  end

  app "Sitebulb.app"
end
