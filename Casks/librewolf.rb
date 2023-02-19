cask "librewolf" do
  arch arm: "aarch64", intel: "x86_64"

  on_intel do
    version "110.0,1,888ba593f6db715c053f5d3247c1b10e"
    sha256 "93f41c758e5f1918a4061170f689022dfe4bce43420fe402958372892332639e"
  end
  on_arm do
    version "110.0,1,fc1f7e860eb340beddce51556642a82b"
    sha256 "b9bfee951d72669db40f70f4585774acd884c52c60feb391cdd4072a06d92268"
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
  binary "#{appdir}/LibreWolf.app/Contents/MacOS/librewolf"

  zap trash: [
    "~/.librewolf",
    "~/Library/Application Support/LibreWolf",
    "~/Library/Caches/LibreWolf",
    "~/Library/Caches/LibreWolf Community",
    "~/Library/Preferences/io.gitlab.librewolf-community.librewolf.plist",
    "~/Library/Saved Application State/io.gitlab.librewolf-community.librewolf.savedState",
  ]
end
