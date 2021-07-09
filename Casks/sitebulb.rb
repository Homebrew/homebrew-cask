cask "sitebulb" do
  version "4.7.2"
  sha256 "cdb0c4f44d972afa7ba46645e4356e0a4da6072f9aa85c4b08189aa61289e31c"

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
