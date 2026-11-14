cask "antconc" do
  on_arm do
    version "4.4.2"
    sha256 "f0d84bb2cd6f0d29438039c565e1a2c272312b951a573defa18f8eacf994f765"

    url "https://www.laurenceanthony.net/software/antconc/releases/AntConc#{version.no_dots}/macos/silicon/AntConc-#{version}-macos-apple-silicon.dmg"

    livecheck do
      url "https://www.laurenceanthony.net/software/antconc/releases/latest_version.json"
      strategy :json do |json|
        next if json["is_beta"]

        json["version"]
      end
    end
  end
  on_intel do
    version "4.3.1"
    sha256 "e6be15d1a53d49ab90ae8cbbb9b674257cd26eec2fd0a1dd592f20a0c5f153c4"

    url "https://www.laurenceanthony.net/software/antconc/releases/AntConc#{version.no_dots}/apple-intel/AntConc.dmg"

    livecheck do
      skip "Legacy version"
    end
  end

  name "AntConc"
  desc "Corpus analysis toolkit for concordancing and text analysis"
  homepage "https://www.laurenceanthony.net/software/antconc/"

  depends_on :macos

  app "AntConc.app"

  zap trash: [
    "~/Library/Application Support/antlab.antconc",
    "~/Library/Preferences/AntConc.plist",
    "~/Library/Preferences/com.antlabsolutions.AntConc.plist",
  ]
end
