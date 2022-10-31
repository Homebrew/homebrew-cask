cask "librewolf" do
  arch arm: "aarch64", intel: "x86_64"

  on_intel do
    version "106.0.2,1,3d21c6d2b48a212f359a5ecac6c80d01"
    sha256 "3842faef30c69761620bb65763a52b01dd52b399c2c8a62c39a656c24e3bcf36"
  end
  on_arm do
    version "106.0.2,1,2934e64b7d239947a5b51adc52236b31"
    sha256 "a4cfb8cc538e05c93a32c1c86eabbbb70cb6eaaf28e9f0840a2613132a63fcbf"
  end

  url "https://gitlab.com/librewolf-community/browser/macos/uploads/#{version.csv.third}/librewolf-#{version.csv.first}-#{version.csv.second}.en-US.mac.#{arch}.dmg",
      verified: "gitlab.com/librewolf-community/browser/macos/"
  name "LibreWolf"
  desc "Web browser"
  homepage "https://librewolf.net/"

  livecheck do
    url "https://gitlab.com/api/v4/projects/13853965/releases"
    regex(%r{/(\w+)/librewolf[._-](\d+(?:\.\d+)+)-(\d+)\.en-US\.mac\.#{arch}\.dmg[\s"]}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map do |match|
        "#{match[1]},#{match[2]},#{match[0]}"
      end
    end
  end

  app "LibreWolf.app"

  zap trash: [
    "~/.librewolf",
    "~/Library/Application Support/LibreWolf",
    "~/Library/Caches/LibreWolf",
    "~/Library/Caches/LibreWolf Community",
    "~/Library/Preferences/io.gitlab.librewolf-community.librewolf.plist",
    "~/Library/Saved Application State/io.gitlab.librewolf-community.librewolf.savedState",
  ]
end
