cask "omnigraffle" do
  on_el_capitan :or_older do
    version "7.5"
    sha256 "d8d8963a85ee34270d7d0148aaaa7aee75bc7d3fffc1bb89e64626546c943d34"

    url "https://downloads.omnigroup.com/software/MacOSX/10.11/OmniGraffle-#{version}.dmg"

    livecheck do
      skip "Legacy version"
    end
  end
  on_sierra do
    version "7.8.2"
    sha256 "ab463ea6c12d49c4104d3814ac3280d0359072702d4751f5074f644fc79de0c6"

    url "https://downloads.omnigroup.com/software/MacOSX/10.12/OmniGraffle-#{version}.dmg"

    livecheck do
      skip "Legacy version"
    end
  end
  on_high_sierra do
    version "7.11.5"
    sha256 "83ef24af2dbd7977b9922e992f17f23e102562f0589d28bc37d5579b4a4d4938"

    url "https://downloads.omnigroup.com/software/MacOSX/10.13/OmniGraffle-#{version}.dmg"

    livecheck do
      skip "Legacy version"
    end
  end
  on_mojave do
    version "7.18.6"
    sha256 "5dfc4f56f5a243f39abf0baf3d9dc2b1921f981bc6edb876f4eec710379e1fa6"

    url "https://downloads.omnigroup.com/software/MacOSX/10.14/OmniGraffle-#{version}.dmg"

    livecheck do
      skip "Legacy version"
    end
  end
  on_catalina do
    version "7.18.6"
    sha256 "5dfc4f56f5a243f39abf0baf3d9dc2b1921f981bc6edb876f4eec710379e1fa6"

    url "https://downloads.omnigroup.com/software/MacOSX/10.14/OmniGraffle-#{version}.dmg"

    livecheck do
      skip "Legacy version"
    end
  end
  on_big_sur do
    version "7.22.6"
    sha256 "1159e731ab282b2f2b3881cbc75cc7bb40263cb3b56826f4ef6334295b47a883"

    url "https://downloads.omnigroup.com/software/macOS/11/OmniGraffle-#{version}.dmg"

    livecheck do
      skip "Legacy version"
    end
  end
  on_monterey :or_newer do
    version "7.24.5"
    sha256 "969d1b944c8e1b2664d980fc96354e8f655a8ee305cc400ad2a0578f82be9537"

    url "https://downloads.omnigroup.com/software/macOS/12/OmniGraffle-#{version}.dmg"

    livecheck do
      url "https://www.omnigroup.com/download/latest/omnigraffle/"
      strategy :header_match
    end
  end

  name "OmniGraffle"
  desc "Visual communication software"
  homepage "https://www.omnigroup.com/omnigraffle/"

  auto_updates true

  app "OmniGraffle.app"

  zap trash: [
    "~/Library/Application Scripts/com.omnigroup.OmniGraffle#{version.major}",
    "~/Library/Application Support/CloudDocs/session/containers/iCloud.com.omnigroup.OmniGraffle",
    "~/Library/Application Support/CloudDocs/session/containers/iCloud.com.omnigroup.OmniGraffle.plist",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.omnigroup.omnigraffle#{version.major}.sfl*",
    "~/Library/Containers/com.omnigroup.OmniGraffle#{version.major}",
    "~/Library/Mobile Documents/iCloud~com~omnigroup~OmniGraffle",
  ]
end
