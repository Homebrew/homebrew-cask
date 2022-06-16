cask "omnigraffle" do
  if MacOS.version <= :el_capitan
    version "7.5"
    sha256 "d8d8963a85ee34270d7d0148aaaa7aee75bc7d3fffc1bb89e64626546c943d34"
    url "https://downloads.omnigroup.com/software/MacOSX/10.11/OmniGraffle-#{version}.dmg"

    livecheck do
      skip "Legacy version for El Capitan"
    end
  elsif MacOS.version <= :sierra
    version "7.8.2"
    sha256 "ab463ea6c12d49c4104d3814ac3280d0359072702d4751f5074f644fc79de0c6"
    url "https://downloads.omnigroup.com/software/MacOSX/10.12/OmniGraffle-#{version}.dmg"

    livecheck do
      skip "Legacy version for Sierra"
    end
  elsif MacOS.version <= :high_sierra
    version "7.11.5"
    sha256 "83ef24af2dbd7977b9922e992f17f23e102562f0589d28bc37d5579b4a4d4938"
    url "https://downloads.omnigroup.com/software/MacOSX/10.13/OmniGraffle-#{version}.dmg"

    livecheck do
      skip "Legacy version for High Sierra"
    end
  elsif MacOS.version <= :catalina
    version "7.18.6"
    sha256 "5dfc4f56f5a243f39abf0baf3d9dc2b1921f981bc6edb876f4eec710379e1fa6"
    url "https://downloads.omnigroup.com/software/MacOSX/10.14/OmniGraffle-#{version}.dmg"

    livecheck do
      skip "Legacy version for Mojave and Catalina"
    end
  else
    version "7.20"
    sha256 "5b37ff0853875678175e01f785dd5db06d401fa5e8e2a1c6b8a4103a912b3666"
    url "https://downloads.omnigroup.com/software/macOS/11/OmniGraffle-#{version}.dmg"

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

  zap trash: "~/Library/Application Support/The Omni Group/OmniGraffle"
end
