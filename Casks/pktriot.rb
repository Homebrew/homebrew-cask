cask "pktriot" do
  version "0.11.2"
  sha256 "14ddacd77569abbb7f60db400b05b09c1c18734214a390d365276b630f7a1680"

  url "https://download.packetriot.com/macos/pktriot-#{version}.macos.tar.gz"
  name "pktriot"
  desc "Host server applications and static websites"
  homepage "https://packetriot.com/"

  livecheck do
    url "https://packetriot.com/downloads"
    strategy :page_match
    regex(/href=.*?pktriot[._-](\d+(?:\.\d+)*)\.macos\.t/i)
  end

  binary "pktriot-#{version}/pktriot"
end
