cask "sitebulb" do
  version "5.2"
  sha256 "72b18100721ec46f245bd6d70cac20286d420f594b20db92bbf7b6fb79f53c33"

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
