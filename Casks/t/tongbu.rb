cask "tongbu" do
  version "3.1.5.0"
  sha256 "45ae3ab18e88b83460df559beccffc2267e79150e046cd4d091d0c6c9102d53e"

  url "https://qd.tongbu.com/qd/tbzsqd/zsmac_#{version}/%E5%90%8C%E6%AD%A5%E5%8A%A9%E6%89%8B_mac_v#{version}_empty.dmg"
  name "Tongbu"
  desc "Mobile phone management tool"
  homepage "https://zs.tongbu.com/mac/"

  livecheck do
    url :homepage
    regex(%r{href=.*?zsmac[._-]v?(\d+(?:\.\d+)+)/}i)
  end

  app "Tongbu.app"

  zap trash: [
        "~/Library/Caches/com.tongbu.assistant2",
        "~/Library/HTTPStorages/com.tongbu.assistant2",
        "~/Library/WebKit/com.tongbu.assistant2",
      ],
      rmdir: "~/Music/Tongbu"

  caveats do
    requires_rosetta
  end
end
