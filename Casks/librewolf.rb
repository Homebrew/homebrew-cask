cask "librewolf" do
  arch = Hardware::CPU.intel? ? "" : "_aarch64_exp"

  if Hardware::CPU.intel?
    version "96.0.1,1,6230d2cddf41de50a6f0ca7d88cba1b9"
    sha256 "07e5f7612d74f039c49fb083e5ce220e91355aba801448dfed0f93d88ecb77ce"
  else
    version "96.0.1,1,2ade2988303f8fc4bd19676ecd8860e7"
    sha256 "28aa0467cf1b8adf9c6eb567ef38558507a86080b10d1f0db5d74886964bb89f"
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
