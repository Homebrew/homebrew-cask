cask "librewolf" do
  arch arm: "aarch64", intel: "x86_64"

  on_intel do
    version "105.0.2,1,dddec6f0435424ddf0d4a50e2e04cb62"
    sha256 "d3029e2cc3d63470e328136a566d1c66cb89848aad2d7b08e2ed4b5c1ca59c4b"
  end
  on_arm do
    version "105.0.2,1,e6166177bc07a272585d8f1a2cf50950"
    sha256 "a667fbf337aa35bdab505d763af0d6d2a2f585035cec2d4a1be219347e20c549"
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
