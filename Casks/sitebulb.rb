cask "sitebulb" do
  version "4.6.2"
  sha256 "a66dd8116b526e369eaa1efaefc43a81795a4e7094f65b6ab035811efe43b83a"

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
