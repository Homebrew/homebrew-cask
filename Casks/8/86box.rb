cask "86box" do
  version "5.3,8200"
  sha256 "a4b718446f6064b541384490308cb76d0e7cf401a1f78d4d8d22372f96e04af1"

  url "https://github.com/86Box/86Box/releases/download/v#{version.csv.first}/86Box-macOS-x86_64+arm64-b#{version.csv.second}.zip",
      verified: "github.com/86Box/86Box/"
  name "86Box"
  desc "Emulator of x86-based machines based on PCem"
  homepage "https://86box.net/"

  livecheck do
    url :url
    regex(%r{/v?(\d+(?:\.\d+)*)/86Box[._-]macOS.*?[._-]b(\d+)\.zip$}i)
    strategy :github_latest do |json, regex|
      json["assets"]&.map do |asset|
        match = asset["browser_download_url"]&.match(regex)
        next if match.blank?

        "#{match[1]},#{match[2]}"
      end
    end
  end

  depends_on macos: ">= :big_sur"

  app "86Box.app"

  roms_dir = Pathname("~/Library/Application Support/net.86box.86Box/roms")

  preflight do
    roms_dir.expand_path.mkpath
  end

  uninstall trash: "#{appdir}/86box"

  zap trash: [
    "~/Library/Application Support/86Box",
    "~/Library/Application Support/net.86box.86Box",
    "~/Library/Preferences/86Box",
    "~/Library/Preferences/net.86Box.86Box.plist",
    "~/Library/Saved Application State/net.86Box.86Box.savedState",
  ]

  caveats do
    <<~EOS
      The latest ROM files from https://github.com/86Box/roms need to be installed into:

        #{roms_dir}
    EOS
  end
end
