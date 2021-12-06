cask "sitebulb" do
  version "5.4"
  sha256 "2891efe411ffa19a1a45cacd3b627717fcac7221cd00d765353337d0f88aad4b"

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
