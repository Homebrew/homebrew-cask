cask "librewolf" do
  arch = Hardware::CPU.intel? ? "" : "_aarch64_exp"

  if Hardware::CPU.intel?
    version "96.0.3,1,dc7f916e3934e6e332b2b7c5fcf30175"
    sha256 "3a45392bac62cf11e1153fd83cdedeb90b8acfc93d9e31d97f7853625973a187"
  else
    version "96.0.3,1,50ab139fe29f3ae1b0e3d3488386d145"
    sha256 "ce576f5cce6fa2fe78bb5afe4706358be1b72d3b30630617a8768d99e9ca4fce"
  end

  url "https://gitlab.com/librewolf-community/browser/macos/uploads/#{version.csv.third}/librewolf-#{version.csv.first}-#{version.csv.second}#{arch}.dmg",
      verified: "gitlab.com/librewolf-community/browser/macos/"
  name "LibreWolf"
  desc "Web browser"
  homepage "https://librewolf.net/"

  livecheck do
    url "https://gitlab.com/api/v4/projects/13853965/releases"
    regex(%r{/(\w+)/librewolf[._-](\d+(?:\.\d+)+)-(\d+)#{arch}\.dmg}i)
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
