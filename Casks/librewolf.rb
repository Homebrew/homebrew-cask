cask "librewolf" do
  arch arm: "aarch64", intel: "x86_64"

  on_intel do
    version "107.0.1,1,722ef832659bccebad69b9bf79175333"
    sha256 "efcd5c1acd4bd79ce94bec8c07b7abb8125c736d821a64b20e79f852115f93cb"
  end
  on_arm do
    version "107.0.1,1,a0eb3cbf9cbf392f79d346152232bcd8"
    sha256 "637153a9c8d2d8c879c3da7fc98e0da11f6e9b1b8a0f176b97ff1df5bb5dc621"
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
