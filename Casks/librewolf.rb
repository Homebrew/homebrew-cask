cask "librewolf" do
  arch = Hardware::CPU.intel? ? "" : "_aarch64_exp"

  if Hardware::CPU.intel?
    version "95.0.1,1,5bb6190211fa0013084409c1ae2bffcd"
    sha256 "fca05a020f8594ee9064819988daee64638192cf2ae0d0085944fe9a6233037c"
  else
    version "95.0.1,1,a13300242c6e5b70f9e1d4eba54eadb2"
    sha256 "b0fbb663823e8c2f6b4aa44341d1567b31d079ea59dcc1e00c2cdbb0ca0e6226"
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
